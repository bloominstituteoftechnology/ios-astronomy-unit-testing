//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Alex Shillingford on 12/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    func testFetchMarsRover() {
        var mockLoader = MockLoader()
        mockLoader.data = validRoverJSON
        var marsRover: MarsRover?
        
        let client = MarsRoverClient(networkLoader: mockLoader)
        
        let exp = expectation(description: "Test asynchronous code on fetchMarsRover()")
        
        client.fetchMarsRover(named: "Curiosity", using: mockLoader) { (rover, error) in
            marsRover = rover
            exp.fulfill()
        }
        
        wait(for: [exp], timeout: 3)
        XCTAssertNotNil(marsRover)
    }
    
    func testFetchMarsRoverFail() {
        var mockLoader = MockLoader()
        mockLoader.data = invalidRoverJSON
        var marsRover: MarsRover?
        
        let client = MarsRoverClient(networkLoader: mockLoader)
        
        let exp = expectation(description: "Test asynchronous code on fetchMarsRover()")
        
        client.fetchMarsRover(named: "Curiosity", using: mockLoader) { (rover, error) in
            marsRover = rover
            exp.fulfill()
        }
        
        wait(for: [exp], timeout: 3)
        XCTAssertNil(marsRover)
    }
    
    func testFetchPhotos() {
        
    }

}
