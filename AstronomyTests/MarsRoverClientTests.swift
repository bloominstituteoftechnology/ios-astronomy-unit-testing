//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Moin Uddin on 10/22/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    func testFetchMarsRover() {
        let mockLoader = MockLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        let expectation = self.expectation(description: "Perform Fetching Mars Rover")
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
            XCTAssertNotNil(rover)
            XCTAssert(rover?.name == "Curiosity")
            XCTAssert(rover?.numberOfPhotos == 4156)
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 3, handler: nil)
    }
    
    func testFetchPhotos() {
        let solLoader = MockLoader(data: validSol1JSON, error: nil)
        let roverLoader = MockLoader(data: validRoverJSON, error: nil)
        let marsRoverClientwithSol = MarsRoverClient(networkLoader: solLoader)
        let marsRoverClientwithRover = MarsRoverClient(networkLoader: roverLoader)
        var marsRover: MarsRover?
        
        let roverExpection = self.expectation(description: "Perform Fetching Mars Rover")
        
        marsRoverClientwithRover.fetchMarsRover(named: "Curiosity") { (rover, error) in
            marsRover = rover
            roverExpection.fulfill()
        }
        
        waitForExpectations(timeout: 3, handler: nil)
        guard let unwrappedMarsRover = marsRover else {
            print("Mars Rover wasn't set")
            return
        }
        let solExpectation = self.expectation(description: "Perform Fetching Sol")
        marsRoverClientwithSol.fetchPhotos(from: unwrappedMarsRover, onSol: 1) { (photoreferences, error) in
            guard let photoreferences = photoreferences else { return }
            XCTAssertTrue(photoreferences.first?.id == 4477)
            XCTAssertTrue(photoreferences.last?.id == 49201)
            XCTAssertTrue(photoreferences.count == 16)
            solExpectation.fulfill()
        }
        
        waitForExpectations(timeout: 3, handler: nil)
    }
    
    
}
