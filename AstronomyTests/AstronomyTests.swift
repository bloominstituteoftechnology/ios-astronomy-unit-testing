//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Tobi Kuyoro on 20/04/2020.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class AstronomyTests: XCTestCase {
    
    func testFetchingMarsRover() {
        let expectation = self.expectation(description: "Waiting for Mars Rover Results...")
        let roverClient = MarsRoverClient()
        
        roverClient.fetchMarsRover(named: "Curiosity") { data, error in
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 5)
    }
    
    func testForValidDataDuringFetchRequest() {
        let expectation = self.expectation(description: "Waiting for valid data...")
        let roverClient = MarsRoverClient()
        
        roverClient.fetchMarsRover(named: "Curiosity") { data, error in
            guard let data = data else {
                XCTFail("Failed to get data for Curiosity")
                return
            }
            XCTAssertNotNil(data)
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 5)
    }
}
