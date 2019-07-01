//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Thomas Cacciatore on 7/1/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    func testFetchMarsRoverWithData() {
        let expectation = self.expectation(description: "Rover should not be empty")
        let mockLoader = MockLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        
        marsRoverClient.fetchMarsRover(named: "curiosity") { (data, error) in
            XCTAssertNotNil(data)
            XCTAssert(marsRoverClient.marsRover?.name == "Curiosity")
            expectation.fulfill()
        }
        waitForExpectations(timeout: 3)
    }
    
    func testFetchMarsRoverWithError() {
        let expectation = self.expectation(description: "Rover data should be empty and return an error")
        let error = NSError(domain: "com.LambdaSchool.Astronomy.ErrorDomain", code: -1, userInfo: nil)
        let mockLoader = MockLoader(data: nil, error: error)
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        
        marsRoverClient.fetchMarsRover(named: "pikachu") { (data, error) in
            XCTAssertNil(marsRoverClient.marsRover)
            XCTAssertNotNil(error)
            expectation.fulfill()
        }
        waitForExpectations(timeout: 4)
    }

//    func testFetchPhotosWithData() {
//
//        let expectation = self.expectation(description: "Photos should not be empty")
//        let mockLoader = MockLoader(data: validSol1JSON, error: nil)
//        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
//
//        marsRoverClient.fetchPhotos(from: value(forKey: "Curiosity") as! MarsRover, onSol: 1) { (photos, error) in
//
//        }
//
//    }

    func testFetchPhotosWithError() {



    }

}
