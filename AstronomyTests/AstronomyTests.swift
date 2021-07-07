//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Lydia Zhang on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

struct MockDataLoader: NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 2) {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 2) {
            completion(self.data, self.error)
        }
    }
    
    var data: Data?
    var error: Error?
}

class AstronomyTests: XCTestCase {
    
    private var rover: MarsRover?
    private var error: Error?

    func testFetchMockRover() {
        let mockDataLoader = MockDataLoader(data: validRoverJSON, error: nil)
        
        let controller = MarsRoverClient(networkLoader: mockDataLoader)
        let expectation = self.expectation(description: "wait")
        
        controller.fetchMarsRover(named: "Curiosity") {rover,error in
            self.rover = rover
            self.error = error
            
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10)
        
        XCTAssertNil(error)
        XCTAssertEqual(rover?.name, "Curiosity")
    }
    
    
    func testFetchMockImage() {
        
        var images: [MarsPhotoReference]?

        let mockDataLoader = MockDataLoader(data: validSol1JSON, error: nil)
        let controller = MarsRoverClient(networkLoader: mockDataLoader)
        let expectation = self.expectation(description: "wait")
        let rover = MarsRover(name: "", launchDate: Date(), landingDate: Date(), status: .active, maxSol: 1, maxDate: Date(), numberOfPhotos: 1, solDescriptions: [SolDescription(sol: 1, totalPhotos: 1, cameras: [""])])
        controller.fetchPhotos(from: rover, onSol: 1) { image, error in
            self.error = error
            images = image
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10)
        XCTAssertEqual(images?.count,16)
        XCTAssertNil(error)
    }

    func testFetchRover() {
        
        let expectation = self.expectation(description: "wait")
            MarsRoverClient().fetchMarsRover(named: "Curiosity") {rover,error in
                self.rover = rover
                self.error = error
                expectation.fulfill()
            }
            wait(for: [expectation], timeout: 10)
            XCTAssertNil(error)
            XCTAssertEqual(rover?.name, "Curiosity")
        }
    
    func testFetchImages() {
        let expectation = self.expectation(description: "wait")
        
        testFetchRover()
        
        var images: [MarsPhotoReference]?
        MarsRoverClient().fetchPhotos(from: rover!, onSol: rover!.solDescriptions[0].sol) { image, error in
            images = image
            self.error = error
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 30)
        XCTAssertNotNil(images)
    }
    
}
