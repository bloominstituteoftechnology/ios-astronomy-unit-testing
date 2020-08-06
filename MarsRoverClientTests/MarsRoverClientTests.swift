//
//  MarsRoverClientTests.swift
//  MarsRoverClientTests
//
//  Created by David Williams on 8/5/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    
    func testFetchMarsRover() {
        
        let searchExpectation = expectation(description: "Waiting for results")
        let mockLoader = MockLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
            XCTAssert(rover?.name == "Curiosity")
            XCTAssertNil(error)
            searchExpectation.fulfill()
            
        }
        
    wait(for: [searchExpectation], timeout: 5)
        
    }
    
    func testNoRover() {
        let searchExpectation = expectation(description: "Waiting for results")
        let mockLoader = MockLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        
       marsRoverClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
                  XCTAssertFalse(rover?.name == "Budha")
                  XCTAssertNil(error)
                  searchExpectation.fulfill()
                  
              }
              
          wait(for: [searchExpectation], timeout: 5)
    }
    
    func testRoverImage() {
        
        let searchExpectation = expectation(description: "Waiting for results")
        let mockLoader = MockLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        let marsRover = MarsRover(name: "Curiosity", launchDate: MarsRover.dateFormatter.date(from: "2011-11-26")!, landingDate:MarsRover.dateFormatter.date(from: "2012-08-06")!, status: MarsRover.Status(rawValue: "active")!, maxSol: 2172, maxDate: MarsRover.dateFormatter.date(from: "2018-09-15")!, numberOfPhotos: 341463, solDescriptions: [])
        
        marsRoverClient.fetchPhotos(from: marsRover, onSol: 4) { (photoReference, error) in
            XCTAssertTrue(marsRover.numberOfPhotos > 0)
            
            searchExpectation.fulfill()
        }
        wait(for: [searchExpectation], timeout: 5)
    }
    
}
