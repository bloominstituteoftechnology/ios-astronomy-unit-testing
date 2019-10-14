//
//  MarsRoverClientTests.swift
//  MarsRoverClientTests
//
//  Created by Jake Connerly on 10/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    func testFetchingMarsRover() {
        let mock = MockDataLoader()
        mock.data = validRoverJSON
        let client = MarsRoverClient(networkDataLoader: mock)
        var rover: MarsRover? = nil
        let resultsExpectation = expectation(description: "Wait for results")
        
        client.fetchMarsRover(named: "Curiosity") { (marsRover, error) in
            if let marsRover = marsRover {
                resultsExpectation.fulfill()
                rover = marsRover
            }
        }
        wait(for: [resultsExpectation], timeout: 2)
        XCTAssertNotNil(rover)
    }
    
    

}
