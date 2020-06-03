//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Matthew Martindale on 6/2/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class AstronomyTests: XCTestCase {

    func testFetchMarsRover() {
        
        let testJSON = TestJSON()
        let expectation = self.expectation(description: "Waiting to fetch Mars rover")
        let mockLoader = MockLoader(data: testJSON.validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkDataLoader: mockLoader)
        
        marsRoverClient.fetchMarsRover(named: "Tim") { (possibleData, possibleError) in
            XCTAssertNil(possibleError)
            XCTAssertNotNil(possibleData)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
    }
    
    
 
    
}
