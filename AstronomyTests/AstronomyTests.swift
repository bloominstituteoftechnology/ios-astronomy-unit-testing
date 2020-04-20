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
        let expectation = self.expectation(description: "Waiting for Mars Rover results...")
        let roverClient = MarsRoverClient()
        
        roverClient.fetchMarsRover(named: "Curiosity") { data, error in
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 5)
    }
    
    func testForValidDataDuringFetchRequest() {
        let expectation = self.expectation(description: "Waiting for valid data...")
        let roverClient = MarsRoverClient()
        
        roverClient.fetchMarsRover(named: "Curiosity") { data, error in
            guard let data = data else {
                XCTFail("Failed to get data for Curiosity")
                return
            }
            XCTAssertNotNil(data)
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
}
