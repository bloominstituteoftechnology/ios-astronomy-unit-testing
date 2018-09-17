//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Conner on 9/17/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MockDataLoader: NetworkDataLoader {
    init(data: Data?, error: Error?) {
        self.data = data
        self.error = error
    }
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        self.request = request
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        self.url = url
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
    
    let data: Data?
    let error: Error?
    private(set) var request: URLRequest? = nil
    private(set) var url: URL? = nil
}

class MarsRoverClientTests: XCTestCase {
    var rover: MarsRover?
    
    func testFetchMarsRover() {
        let mock = MockDataLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(dataLoader: mock)
        
        let expectation = self.expectation(description: "Loads Mars Rover data")
        
        marsRoverClient.fetchMarsRover(named: "curiosity") { (marsRover, error) in
            XCTAssertNotNil(mock.url)
            XCTAssertNotNil(mock.data)
            XCTAssertEqual(marsRover?.name, "Curiosity")
            XCTAssertEqual(marsRover?.maxSol, 10)
            
            self.rover = marsRover
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 1.0, handler: nil)
    }
    
    func testFetchPhotos() {
        let mockForRover = MockDataLoader(data: validRoverJSON, error: nil)
        let marsRoverClientForRover = MarsRoverClient(dataLoader: mockForRover)
        
        let mockForPhotos = MockDataLoader(data: validSol1JSON, error: nil)
        let marsRoverClientForPhotos = MarsRoverClient(dataLoader: mockForPhotos)
        
        let photoExpectation = self.expectation(description: "Fetch photos successfully for rover")
        
        marsRoverClientForRover.fetchMarsRover(named: "curiosity") { (marsRover, error) in
            if let marsRover = marsRover {
                marsRoverClientForPhotos.fetchPhotos(from: marsRover, onSol: 1, completion: { (marsPhotos, error) in
                    XCTAssertNotNil(marsPhotos)
                    XCTAssertEqual(marsPhotos?.count, 16)
                    guard let firstPhoto = marsPhotos?.first else { return }
                    XCTAssertEqual(firstPhoto.imageURL.absoluteString, "http://mars.jpl.nasa.gov/msl-raw-images/msss/00001/mcam/0001ML0000001000I1_DXXX.jpg")
                    
                    photoExpectation.fulfill()
                })
            }
        }
        
        waitForExpectations(timeout: 1.0, handler: nil)
    }
}
