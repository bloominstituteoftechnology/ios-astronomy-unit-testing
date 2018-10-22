//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Moin Uddin on 10/22/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    func testFetchMarsRover() {
        let mockLoader = MockLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        let expectation = self.expectation(description: "Perform Fetching Mars Rover")
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
            XCTAssertNotNil(rover)
            XCTAssert(rover?.numberOfPhotos == 4156)
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 3, handler: nil)
    }
    
    func testFetchPhotos() {
        
    }
    
    
}
