//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Gi Pyo Kim on 11/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class AstronomyTests: XCTestCase {

    /*
     
     Test cases:
     
     
    */
    
    var marsRover: MarsRover?
    var error: Error?
    
    func testFetchMarsRover() {
        let mock = MockDataLoader()
        mock.data = validRoverJSON
        
        let controller = MarsRoverClient(networkLoader: mock)
        let resultsExpection = expectation(description: "Wait for results")
        
        controller.fetchMarsRover(named: "Curiosity") { (marsRover, error) in
            if let marsRover = marsRover {
                self.marsRover = marsRover
            }
            
            if let error = error {
                self.error = error
            }
            
            resultsExpection.fulfill()
        }
        
        wait(for: [resultsExpection], timeout: 2)
        
        XCTAssertEqual("Curiosity", marsRover?.name)
    }
    

    
}
