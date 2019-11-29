//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Vici Shaweddy on 11/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    func testFetchMarsRover() {
        let mock = MockDataLoader()
        mock.data = validRoverJSON
        
        let controller = MarsRoverClient(networkLoader: mock)
        let resultsExpectation = expectation(description: "Wait for fetching results")
        
        var marsRover: MarsRover?
        controller.fetchMarsRover(named: "Curiosity") { (rover, _) in
            resultsExpectation.fulfill()
            marsRover = rover
        }
        
        wait(for: [resultsExpectation], timeout: 2)
        XCTAssertEqual("Curiosity", marsRover?.name)
        XCTAssertTrue(marsRover?.solDescriptions.count == 5)
    }
    
    func testFetchPhotos() {
        let mock = MockDataLoader()
        mock.data = validSol1JSON
        
        let controller = MarsRoverClient(networkLoader: mock)
        let resultExpectation = expectation(description: "Wait for photos")
        
        let marsRover = MarsRover(name: "Testing", launchDate: Date(), landingDate: Date(), status: .active, maxSol: 1, maxDate: Date(), numberOfPhotos: 2, solDescriptions: [])
        controller.fetchPhotos(from: marsRover, onSol: 3) { (photos, _) in
            resultExpectation.fulfill()
            XCTAssertNotNil(photos)
            XCTAssertTrue(photos?.count == 16)
        }
        
        wait(for: [resultExpectation], timeout: 2)
    }
}
