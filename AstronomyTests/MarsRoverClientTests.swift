//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by scott harris on 3/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    func testFetchMarsRover() {
        let mockDataLoader = MockLoader(data: validRoverJSON, error: nil)
        
        let marsRoverClient = MarsRoverClient(networkLoader: mockDataLoader)
        
        let exp = expectation(description: "Wait For Results")
        
        var netRover: MarsRover?
        var netError: Error?
        
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
            netRover = rover
            netError = error
            exp.fulfill()
        }
        
        wait(for: [exp], timeout: 5)
        
        XCTAssertNil(netError)
        XCTAssertNotNil(netRover)
        XCTAssertEqual(netRover?.name, "Curiosity")
        
    }
    
    func testFetchPhotos() {
        let mockDataLoader = MockLoader(data: validSol1JSON, error: nil)
        
        let marsRoverClient = MarsRoverClient(networkLoader: mockDataLoader)
        
        let exp = expectation(description: "Wait For Results")
        let decoder = MarsPhotoReference.jsonDecoder
        let marsRoverDictionary = try! decoder.decode([String: MarsRover].self, from: validRoverJSON)
        let marsRover = marsRoverDictionary["photo_manifest"]!
        
        var netError: Error?
        var netPhotos: [MarsPhotoReference]?
        marsRoverClient.fetchPhotos(from: marsRover, onSol: marsRover.maxSol) { (photos, error) in
            netPhotos = photos
            netError = error
            exp.fulfill()
        }

        wait(for: [exp], timeout: 5)
        
        XCTAssertNil(netError)
        XCTAssertEqual(netPhotos?.count, 16)

    }

}
