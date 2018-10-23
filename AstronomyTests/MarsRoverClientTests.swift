//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Madison Waters on 10/22/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    func testFetchMarsRover() {
        
        let expectation = self.expectation(description: "Check Mars Rover JSON")
        
        let mockLoader = MockLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        
        marsRoverClient.fetchMarsRover(named: "Curiosity") {rover, error in
            XCTAssertEqual(rover?.name, "Curiosity")
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testFetchPhotos() {
        
        let mockloader = MockLoader(data: validSol1JSON, error: nil)
        let client = MarsRoverClient(networkLoader: mockloader)
        let expectation = self.expectation(description: "Photo Fetch Expectation")
        
        let jsonDecoder = MarsPhotoReference.jsonDecoder
        let rover = (try! jsonDecoder.decode([String: MarsRover].self, from: validRoverJSON))["photoManifest"]!
        
        client.fetchPhotos(from: rover, onSol: 1) { (photos, error) in
            defer{ expectation.fulfill() }
            XCTAssertNotNil(photos)
            XCTAssertNil(error)
            
            XCTAssertEqual(photos?.count, 16)
            
        }
    }

}
