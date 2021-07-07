//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Scott Bennett on 10/22/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    // Test if the fetchMarsRover gets valid data back
    
    func testFetchMarsRoverTest() {
        
        let expectation = self.expectation(description: "Perform search expection")
        
        // the input for MarsRoverClient
        let mockDataLoader = MockDataLoader(data: validRoverJSON, error: nil)
        
        let marsRoverClient = MarsRoverClient(dataLoader: mockDataLoader)
        
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
            
            
            
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 5, handler: nil)
        
    }
    
    func testFetchPhotoTest() {
        
        let expectation = self.expectation(description: "Perform search expection")
        
        let mockDataLoader = MockDataLoader(data: validSol1JSON, error: nil)
        
        let marsRoverClient = MarsRoverClient(dataLoader: mockDataLoader)
        
        marsRoverClient.fetchPhotos(from: MarsRover, onSol: 1) { (photoReferences, error) in
            
        
        expectation.fulfill()
        }
     waitForExpectations(timeout: 5, handler: nil)
    }
    
    

}
