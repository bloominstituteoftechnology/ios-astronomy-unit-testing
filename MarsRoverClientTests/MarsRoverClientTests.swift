//
//  MarsRoverClientTests.swift
//  MarsRoverClientTests
//
//  Created by Chris Gonzales on 3/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    
    func testForRoverResults() {
        let controller = MarsRoverClient()
        
        let expectation = self.expectation(description: "Wait for results")
        
        controller.fetchMarsRover(named: "Curiosity") {data,error in
            XCTAssertNotNil(data)
            XCTAssertNil(error)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
    }
    
    func testSpeedRequest() {
        
    }
    
    func testValidData() {
        
    }
    
    func testInvalidJson() {
        
    }
    
    func testNoResultsData() {
        
    }
    
    func testMarsRover() {
        
    }
    
    func testFetchPhotos() {
        
    }
    
}
