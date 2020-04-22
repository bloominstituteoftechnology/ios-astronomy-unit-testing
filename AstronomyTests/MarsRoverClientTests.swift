//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by David Wright on 4/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    
    // MARK: - MVP Required Tests
    
    func testFetchMarsRover() {
        let fetchRoverExpectation = expectation(description: "Waiting for Mars Rover data.")
        let mockDataLoader = MockLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockDataLoader)
        
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (marsRover, error) in
            XCTAssertNil(error, "Expected error = nil, but got error: \(error!)")
            guard let marsRover = marsRover else {
                XCTFail("Mars Rover data unexpectedly equals nil.")
                return
            }
            XCTAssertEqual(marsRover.name, "Curiosity")
            XCTAssertEqual(marsRover.numberOfPhotos, 4156)
            
            fetchRoverExpectation.fulfill()
        }
        
        wait(for: [fetchRoverExpectation], timeout: 5)
    }

    func testFetchPhotos() {
        
        // Fetch Mars Rover "Curiosity"
        let fetchRoverExpectation = expectation(description: "Waiting for Mars Rover data.")
        let mockRoverDataLoader = MockLoader(data: validRoverJSON, error: nil)
        var marsRoverClient = MarsRoverClient(networkLoader: mockRoverDataLoader)
        
        var rover: MarsRover?
        
        marsRoverClient.fetchMarsRover(named: "Curiosity") { marsRover, error in
            XCTAssertNil(error, "Expected error = nil, but got error: \(error!)")
            guard let marsRover = marsRover else {
                XCTFail("Mars Rover data unexpectedly equals nil.")
                return
            }
            rover = marsRover
            fetchRoverExpectation.fulfill()
        }
        
        wait(for: [fetchRoverExpectation], timeout: 5)
        
        // Fetch Mars Photos
        let fetchPhotosExpectation = expectation(description: "Waiting for photos.")
        let mockSolDataLoader = MockLoader(data: validSol1JSON, error: nil)
        marsRoverClient = MarsRoverClient(networkLoader: mockSolDataLoader)
        
        marsRoverClient.fetchPhotos(from: rover!, onSol: 1) { marsPhotoReferences, error in
            
            XCTAssertNil(error, "Expected error = nil, but got error: \(error!)")
            guard let photoRefs = marsPhotoReferences else {
                XCTFail("Mars Rover photos array unexpectedly equals nil.")
                return
            }
            XCTAssertGreaterThan(photoRefs.count, 0)
            XCTAssertEqual(photoRefs.first?.id, 4477)
            XCTAssertEqual(photoRefs.first?.imageURL.absoluteString, "http://mars.jpl.nasa.gov/msl-raw-images/msss/00001/mcam/0001ML0000001000I1_DXXX.jpg")
            
            fetchPhotosExpectation.fulfill()
        }
        
        wait(for: [fetchPhotosExpectation], timeout: 5)
    }
    
    // MARK: - Additional Tests
    
    func testFailedFetchMarsRover() {
        
    }
    
    func testFetch() {
        
    }

}
