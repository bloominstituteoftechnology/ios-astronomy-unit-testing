//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Madison Waters on 2/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    func testFetchMarsRover() {
        
        let expectation = self.expectation(description: "This should return rover data") // I want to see what this does.
        let mockLoader = MockLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
            XCTAssertEqual(rover?.name, "Curiosity")
            XCTAssertEqual(rover?.status, MarsRover.Status(rawValue: "active"))
            expectation.fulfill()
        }
        waitForExpectations(timeout: 5, handler: nil)
        
    }
    
    func testFetchPhotos() {
        
        let expectation = self.expectation(description: "This should return photo data")
        let mockLoader = MockLoader(data: validSol1JSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        
        let jsonDecoder = MarsPhotoReference.jsonDecoder
        let rover = (try! jsonDecoder.decode([String: MarsRover].self, from: validRoverJSON))["photoManifest"]!
        
        marsRoverClient.fetchPhotos(from: rover, onSol: 1) { (photos, error) in
            XCTAssertNotNil(photos)
            XCTAssertNil(error)
            XCTAssertEqual(photos?.count, 16)
        
            let photos = photos![0]
            XCTAssertNotNil(photos.imageURL)
            XCTAssertEqual(photos.sol, 1)
            XCTAssertEqual(photos.id, 4477)
            
            expectation.fulfill()
        }
        waitForExpectations(timeout: 10, handler: nil)
    }

}
