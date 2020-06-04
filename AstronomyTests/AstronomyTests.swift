//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Matthew Martindale on 6/2/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class AstronomyTests: XCTestCase {

    func testFetchMarsRover() {
        
        let testJSON = TestJSON()
        let expectation = self.expectation(description: "Waiting to fetch Mars rover")
        let mockLoader = MockLoader(data: testJSON.validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkDataLoader: mockLoader)
        
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (rover, possibleError) in
            XCTAssertNil(possibleError)
            XCTAssert(rover?.name == "Curiosity")
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
    }
    
    func testAnother() {
        let testJSON = TestJSON()
        let mockLoader = MockLoader(data: testJSON.validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkDataLoader: mockLoader)
        
        let marsRoverExpectation = expectation(description: "Waiting to fetch Mars rover")
        var curiosityRover: MarsRover?
        
        // Fetch mars rover Curiosity
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (possibleRover, possibleError) in
            if let rover = possibleRover {
                curiosityRover = rover
            }
            marsRoverExpectation.fulfill()
        }
        wait(for: [marsRoverExpectation], timeout: 5)
        XCTAssert(curiosityRover != nil)
        XCTAssert(curiosityRover?.name == "Curiosity")
        
        let fetchPhotosExpectation = expectation(description: "Waiting to fetch Curiosity photos")
        // Using fetched Curiosity rover, fetch photos from rover
        guard let rover = curiosityRover else { print("No Rover"); return }
        marsRoverClient.fetchPhotos(from: rover, onSol: 2) { (possiblePhotos, possibleError) in
            XCTAssertNil(possibleError)
            XCTAssertNotNil(possiblePhotos)
            fetchPhotosExpectation.fulfill()
        }
        wait(for: [fetchPhotosExpectation], timeout: 5)
    }
 
    
}
