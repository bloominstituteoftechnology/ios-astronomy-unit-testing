//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by David Wright on 4/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    
    // MARK: - MVP Required Tests
    
    func testFetchMarsRover() {
        let fetchRoverExpectation = expectation(description: "Waiting for Mars Rover data.")
        let mockDataLoader = MockLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockDataLoader)
        
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (marsRover, error) in
            XCTAssertNil(error, "Expected error = nil, but got error: \(error!)")
            guard let marsRover = marsRover else {
                XCTFail("Mars Rover data unexpectedly equals nil.")
                return
            }
            XCTAssertEqual(marsRover.name, "Curiosity")
            XCTAssertEqual(marsRover.numberOfPhotos, 4156)
            
            fetchRoverExpectation.fulfill()
        }
        
        wait(for: [fetchRoverExpectation], timeout: 5)
    }

    func testFetchPhotos() {
        
    }
    
    // MARK: - Additional Tests
    
    func testFailedFetchMarsRover() {
        
    }
    
    func testFetch() {
        
    }

}
