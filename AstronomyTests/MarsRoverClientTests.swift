//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Lambda_School_Loaner_218 on 1/27/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    
    
    func testfetchRoverNetworkData() {
        var rover: MarsRover?
        
        let client = MarsRoverClient()
        let resultsExpectation = expectation(description: "Waiting on Mars Rover")
        
        client.fetchMarsRover(named: "Curiosity") { (possibleRover, error) in
            resultsExpectation.fulfill()
            rover = possibleRover
        }
        
        wait(for: [resultsExpectation], timeout: 10)
        
        XCTAssertNotNil(rover)
    }
    
    func testFetchRoverNetworkError() {
        var error: Error?
        
        let client = MarsRoverClient()
        let resultsExpectation = expectation(description: "Waiting on Mars Rover")
        
        client.fetchMarsRover(named: "hgrnaiorrwfgwqaml") { (possibleRover, possibleError) in
            if let possibleError = possibleError {
                error = possibleError
            }
            resultsExpectation.fulfill()
            
        }
        
        wait(for: [resultsExpectation], timeout: 10)
        
        XCTAssertNotNil(error)
    }
    
    func testFetchMarsRoverMockData() {
        var mock = MockLoader()
        mock.data = validRoverJSON
        var rover: MarsRover?
        
        let client = MarsRoverClient(networkLoader: mock)
        let resultsExpectation = expectation(description: "Wait on a Mars Rover")
        
        client.fetchMarsRover(named: "Curiosity") { (possibleRover, error) in
            resultsExpectation.fulfill()
            rover = possibleRover
        }
        
        wait(for: [resultsExpectation], timeout: 10)
        
        XCTAssertNotNil(rover)
    }
    
    func testFetchPhotosMockData() {
        var mock = MockLoader()
        mock.data = validSol1JSON
        let rover = MarsRover(name: "Pac-Man", launchDate: Date(), landingDate: Date(), status: .complete, maxSol: 1, maxDate: Date(), numberOfPhotos: 1, solDescriptions: [SolDescription(sol: 1, totalPhotos: 1, cameras: [""])])
        
        var photos: [MarsPhotoReference]?

        let client = MarsRoverClient(networkLoader: mock)
        let photoExpectation = expectation(description: "Waiting on Mars Rover Photos")
        
        client.fetchPhotos(from: rover, onSol: 1) { (references, error) in
            if let error = error {
                mock.error = error
            }
            photos = references
            photoExpectation.fulfill()
        }
        wait(for: [photoExpectation], timeout: 10)
        XCTAssertNotNil(photos)
        XCTAssertNil(mock.error)
        XCTAssertTrue(photos!.count > 0)
    }
}
