//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Ciara Beitel on 10/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    
    func testFetchMarsRover() {
        let resultsExpectation = expectation(description: "Wait for results")
        let mock = MockDataLoader(data: goodDataResults)
        
        let controller = MarsRoverClient(networkLoader: mock)
        controller.fetchMarsRover(named: "Curiosity") { (rover, error) in
            resultsExpectation.fulfill()
            XCTAssertEqual(rover?.name, "Curiosity" )
        }
        
        wait(for: [resultsExpectation], timeout: 2)
    }
}
