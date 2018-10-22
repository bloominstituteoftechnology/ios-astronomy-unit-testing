//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Madison Waters on 10/22/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    func testFetchMarsRover() {
        
        let expectation = self.expectation(description: "Check Mars Rover JSON")
        let mockLoader = MockLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        
        marsRoverClient.fetchMarsRover(named: "Curiosity") {data, error in
            
            //XCTAssertEqual(marsRoverClient.networkLoader, <#T##expression2: Equatable##Equatable#>)
            
            let marsRover = marsRoverClient.networkLoader {
                XCTAssertEqual(marsRover.name, "Curiosity")
            }
            
            expectation.fulfill()
        }
        
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    
    
    func testFetchPhotos() {
        
    }

}
