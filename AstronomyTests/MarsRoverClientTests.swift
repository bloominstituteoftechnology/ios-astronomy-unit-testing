//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Daniela Parra on 10/22/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    
    func testDecodeValidMarsRover() {
        let mockLoader = MockLoader(data: validRoverJSON, error: nil)
        let client = MarsRoverClient(networkLoader: mockLoader)
        let roverExpectation = expectation(description: "Fetch Mars Rover expectation")
        
        client.fetchMarsRover(named: "curiosity") { (marsRover, error) in
            
            if let rover = client.rover {
                XCTAssertEqual(rover.name, "Curiosity")
                XCTAssertEqual(rover.numberOfPhotos, 4156)
                XCTAssertEqual(rover.solDescriptions.count, 5)
                roverExpectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testDecodeValidPhotos() {
        let mockLoader = MockLoader(data: validSol1JSON, error: nil)
        let client = MarsRoverClient(networkLoader: mockLoader)
        let photosExpectation = expectation(description: "Fetch Mars Photos expectation")
        let dictionary = try! MarsRover.jsonDecoder.decode([String : MarsRover].self, from: validRoverJSON)
        if let rover = dictionary["photoManifest"] {
            client.fetchPhotos(from: rover, onSol: 1) { (photos, error) in
                XCTAssertNotEqual(client.photos.count, 0)
                XCTAssertEqual(client.photos.count, 16)
                XCTAssertEqual(client.photos.first?.sol, 1)
                XCTAssertEqual(client.photos.first?.id, 4477)
                photosExpectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    test
}
