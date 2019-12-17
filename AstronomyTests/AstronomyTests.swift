//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Dennis Rudolph on 12/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class AstronomyTests: XCTestCase {
    
    var rover: MarsRover?

    override func setUp() {
    }

    override func tearDown() {
    }

    func testFetchMarsRover() {
        
        var working: Bool = false
        let testRoverName: String = "Curiosity"
        
        let mock = MockDataLoader()
        mock.data = validRoverJSON
        
        let controller = MarsRoverClient(networkLoader: mock)
        
        let exp = expectation(description: "Waiting for loading to finish")
        
        controller.fetchMarsRover(named: testRoverName) { (marsRover, error) in
            if let rover = marsRover, rover.name == testRoverName {
                working = true
                self.rover = rover
            }
            exp.fulfill()
        }
        wait(for: [exp], timeout: 10)
        XCTAssertTrue(working)
    }
    
    func testFetchPhotos() {
        testFetchMarsRover()
        var working: Bool = false
        
        let mock = MockDataLoader()
        mock.data = validSol1JSON
        
        let controller = MarsRoverClient(networkLoader: mock)
        
        let exp = expectation(description: "Waiting for photos to load")
        
        controller.fetchPhotos(from: self.rover!, onSol: 1) { (photos, error) in
            if let _ = photos {
                working = true
            }
            exp.fulfill()
        }
        wait(for: [exp], timeout: 10)
        XCTAssertTrue(working)
    }
}
