//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Bhawnish Kumar on 5/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy
class AstronomyTests: XCTestCase {

 
    func testFetchMarsRover() {
        measure {
        let expectation = self.expectation(description: "Waiting for results")
        let roverController = MarsRoverClient()
        
        roverController.fetchMarsRover(named: "curiosity") { (marsrover, error) in
            expectation.fulfill()
        }
            wait(for: [expectation], timeout: 5)
    }
    }
    
    

}
