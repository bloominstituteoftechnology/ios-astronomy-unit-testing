//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Jesse Ruiz on 11/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    func testFetchMarsRover() {
        let mock = MockLoader()
        mock.data = validRoverJSON
        
        let client = MarsRoverClient(networkLoader: mock)
        
        let resultsExpectation = expectation(description: "Wait for results")
        
        client.fetchMarsRover(named: "Curiosity") { (rover, error) in
            resultsExpectation.fulfill()
        }
        
        wait(for: [resultsExpectation], timeout: 2)
        
        //XCTAssert
    }
    
    func testFetchPhotos() {
        
        
    }
}
