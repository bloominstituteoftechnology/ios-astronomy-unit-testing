//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Wyatt Harrell on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class AstronomyTests: XCTestCase {


    func testFetchMarsRover() {
        let expectation = self.expectation(description: "Wait for results")
        let mockLoader = MockLoader(data: validRoverJSON, error: nil)
        let controller = MarsRoverClient(networkLoader: mockLoader)
        
        controller.fetchMarsRover(named: "Curiosity") { (rover, error) in
            
            XCTAssertNil(error)
            XCTAssertNotNil(rover)
            
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 10)
    }
    
    func testFetchPhotos() {
        let expectation = self.expectation(description: "Wait for results")
        let mockLoader = MockLoader(data: validSol1JSON, error: nil)
        let controller = MarsRoverClient(networkLoader: mockLoader)
        
        
        
        
        
        
    }
    
    
    
    
}
