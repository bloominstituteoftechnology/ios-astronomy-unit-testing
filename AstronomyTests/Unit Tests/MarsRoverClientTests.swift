//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Sameera Roussi on 6/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    // TODO: - Unit Test: testMarsRoverFetchDataSession
    func testMarsRoverFetchDataSession () {
        // This is a test of the MarsRoverClient.fetchMarsRover dataSession
        let expectations = self.expectation(description: "Rover data should be retrieved.")
        
        // Set up the data loader
        let mockDataLoader = MockLoader(data: validSol1JSON, response: nil, error: nil)
        let networkClient = MarsRoverClient(networkLoader: mockDataLoader)
        
        // Complete networking
        networkClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
            // Test that a rover has been retrieved
            XCTAssertNotNil(rover)
            // Test that the correct rover was retrieved
            XCTAssertEqual("Curiosity", rover?.name)
            expectations.fulfill()
        }
        // Inject datasession delay
        waitForExpectations(timeout: 5)
    }

    // TODO: - Unit Test: testPhotoFetchDataSession
    func testPhotoFetchDataSession () {
        // This is a test of the MarsRoverClient.fetchPhotos
        let expectations = self.expectation(description: "Attempt to retrieve Rover photos should be successful.")
        
        // Set up the data loader
        let mockDataLoader = MockLoader(data: validSol1JSON, response: nil, error: nil)
        let networkClient = MarsRoverClient(networkLoader: mockDataLoader)
        
        // Provide required array to store "retrieved" photos
         let solDescriptions: [SolDescription] = []
        
        // Initialize a required Rover
        let roverCuriosity = MarsRover(name: "Curiosity", launchDate: Date(), landingDate: Date(),
                                   status: .active, maxSol: 1, maxDate: Date(),
                                   numberOfPhotos: 1, solDescriptions: solDescriptions)
        // Test photo fetch
        networkClient.fetchPhotos(from: roverCuriosity, onSol: 1) { (photos, error) in
            guard let photos = photos else { return }
            
            // Test that the photos have been retrieved
            XCTAssertNotNil(photos.isEmpty)
            expectations.fulfill()
        }
        // Inject datasession delay
        waitForExpectations(timeout: 5)
    }
    
    // TODO: - Unit Test: testFetchDataSession
    func testFetchDataSession () {
        // This is a test of the MarsRoverClient.fetch dataSession
    }
    
    // TODO: - Unit Test: testRoverURLRequestFormat
    func testRoverURLRequestFormat() {
        
    }
    
    // TODO: - Unit Test: testRoverPhotosULRequestFormat
    func testRoverPhotosULRequestFormat() {
        
    }
    
    
    

}
