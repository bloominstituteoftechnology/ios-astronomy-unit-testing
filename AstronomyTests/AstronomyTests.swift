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

    func testFetchRover() {
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
    
    
    func testFetchImage() {
        
        var images: [MarsPhotoReference]?

        let mockDataLoader = MockDataLoader(data: validRoverJSON, error: nil)
        let controller = MarsRoverClient(networkLoader: mockDataLoader)
        let marsRover = try! MarsPhotoReference.jsonDecoder.decode([String: MarsRover].self, from: validRoverJSON)
        let mars = marsRover["photo_manifest"]!
        
        let expectation = self.expectation(description: "wait")
        
        controller.fetchPhotos(from: mars, onSol: 1) { image, error in
            self.error = error
            images = image
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10)
        XCTAssertNotNil(images)
        XCTAssertNil(error)
    }

}
