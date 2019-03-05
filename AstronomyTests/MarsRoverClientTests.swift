//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Moses Robinson on 3/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    func testFetchMarsRover() {
        
        let expectation = self.expectation(description: "Rover should exsist.")
        
        let mockLoader = MockLoader(data: validRoverJSON, error: nil)
        
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
            XCTAssertNotNil(rover)
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 5)
    }
    
    func testFetchPhotos() {
        
        let expectation = self.expectation(description: "Rover photos should not be empty.")
        
        let mockLoader = MockLoader(data: validSol1JSON, error: nil)
        
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        
        let date = Date()
        let int = 1
        let solDescriptions: [SolDescription] = []
        
        let rover = MarsRover(name: "Curiosity",
                              launchDate: date,
                              landingDate: date,
                              status: .active,
                              maxSol: int,
                              maxDate: date,
                              numberOfPhotos: int,
                              solDescriptions: solDescriptions)
        
        marsRoverClient.fetchPhotos(from: rover, onSol: 1) { (roverPhotos, error) in
            guard let roverPhotos = roverPhotos else { return }
            
            XCTAssertFalse(roverPhotos.isEmpty)
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 5)
    }
}
