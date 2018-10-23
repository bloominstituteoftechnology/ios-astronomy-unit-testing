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
        let marsRoverClientwithSol = MarsRoverClient(networkLoader: solLoader)
        let dictionary = try? MarsPhotoReference.jsonDecoder.decode([String: MarsRover].self, from: validRoverJSON)
        guard let marsRover = dictionary?["photoManifest"] else {
            XCTFail()
            return
        }
    
        let solExpectation = self.expectation(description: "Perform Fetching Sol")
        marsRoverClientwithSol.fetchPhotos(from: marsRover, onSol: 1) { (photoreferences, error) in
            guard let photoreferences = photoreferences else { return }
            XCTAssertTrue(photoreferences.first?.id == 4477)
            XCTAssertTrue(photoreferences.last?.id == 49201)
            XCTAssertTrue(photoreferences.count == 16)
            solExpectation.fulfill()
        }
        
        waitForExpectations(timeout: 3, handler: nil)
    }
    
    
}
