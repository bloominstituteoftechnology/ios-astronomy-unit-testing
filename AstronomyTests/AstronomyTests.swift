//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Tobi Kuyoro on 20/04/2020.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class AstronomyTests: XCTestCase {
    
    func testFetchingMarsRover() {
        let expectation = self.expectation(description: "Waiting for valid data...")
        let roverClient = MarsRoverClient()
        
        roverClient.fetchMarsRover(named: "Curiosity") { data, error in
            guard let data = data else {
                XCTFail("Failed to get data for Curiosity")
                return
            }
            XCTAssertNotNil(data)
            XCTAssertGreaterThan(data.numberOfPhotos, 1)
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 5)
    }
    
    func testPhotosReceivedFromFetch() {
        let expectation = self.expectation(description: "Waiting for Mars Rover photos...")
        let roverClient = MarsRoverClient()
        
        let rover = MarsRover(name: "Curiosity",
                              launchDate: Date(),
                              landingDate: Date(),
                              status: .active,
                              maxSol: 10,
                              maxDate: Date(),
                              numberOfPhotos: 4156,
                              solDescriptions: [SolDescription(sol: 3, totalPhotos: 338, cameras: ["MAST"])])
        
        roverClient.fetchPhotos(from: rover, onSol: 3) { data, error in
            guard let data = data else {
                XCTFail("Failed to get photos for Curiosity")
                return
            }
            XCTAssertNotNil(data)
            XCTAssertEqual(data.count, 338)
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 10)
    }
    
    func testValidRoverJSON() {
        let expectation = self.expectation(description: "Testing for valid JSON")
        let dataLoader = MockLoader(data: validRoverJSON, error: nil)
        let roverClient = MarsRoverClient(dataLoader: dataLoader)
        
        roverClient.fetchMarsRover(named: "Curiosity") { rover, error in
            XCTAssertNoThrow(rover)
            
            if let rover = rover {
                XCTAssertEqual(rover.numberOfPhotos, 4156)
                XCTAssertTrue(rover.status == .active)
                XCTAssertGreaterThan(rover.maxSol, 9)
            }
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 5)
    }
    
    func testInvalidRoverJSON() {
        let expectation = self.expectation(description: "Testing for invalid JSON")
        let dataLoader = MockLoader(data: invalidRoverJSON, error: nil)
        let roverClient = MarsRoverClient(dataLoader: dataLoader)
        
        roverClient.fetchMarsRover(named: "Curiosity") { rover, error in
            XCTAssertNil(rover)
            XCTAssertNotNil(error)
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 5)
    }
}
