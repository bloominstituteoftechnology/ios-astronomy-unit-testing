//
//  MarsRoverClientTests.swift
//  MarsRoverClientTests
//
//  Created by David Williams on 8/5/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    func expectation() {
        let searchExpectation = expectation(description: "Waiting for results")
    }
    
    
    func testFetchMarsRover() {
        
        let searchExpectation = expectation(description: "Waiting for results")
        let mockLoader = MockLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
            XCTAssert(rover?.name == "Curiosity")
            XCTAssertNil(error)
            searchExpectation.fulfill()
            
        }
        
    wait(for: [searchExpectation], timeout: 5)
        
    }
    
    func testNoRover() {
        let searchExpectation = expectation(description: "Waiting for results")
        let mockLoader = MockLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        
       marsRoverClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
                  XCTAssertFalse(rover?.name == "Budha")
                  XCTAssertNil(error)
                  searchExpectation.fulfill()
                  
              }
              
          wait(for: [searchExpectation], timeout: 5)
    }
    
    func testRoverImage() {
        
        let mockLoader = MockLoader(data: validRoverJSON, error: nil)
    }
    
}
