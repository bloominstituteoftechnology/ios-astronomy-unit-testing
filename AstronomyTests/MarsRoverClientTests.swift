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
            expectation.fulfill()
        }
        waitForExpectations(timeout: 4)
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
    
    func testFetchPhotosWithData() {
        
        
        
    }
    
    func testFetchPhotosWithError() {
        
        
        
    }

}
