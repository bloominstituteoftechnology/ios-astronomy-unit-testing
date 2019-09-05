//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Seschwan on 9/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class AstronomyTests: XCTestCase {

    var rover: MarsRover?
    var photos: [MarsPhotoReference]?
    
    func testForSomeResults() {
        let mock = MockDataLoader()
        //let mock = MockDataLoader(data: validRoverJSON, error: nil)
        mock.data = validRoverJSON
        let controller = MarsRoverClient(networkLoader: mock)
        let e = expectation(description: "Wait for results")
        controller.fetchMarsRover(named: "curiosity") { (data, error) in
            e.fulfill()
            self.rover = data
        }
        wait(for: [e], timeout: 3)
        XCTAssertTrue(self.rover!.name == "Curiosity")
        XCTAssertTrue(self.rover!.numberOfPhotos > 1)
    }

    
    func testFetchPhotos() {
        let mock = MockDataLoader()
        mock.data = validRoverJSON
        
        let controller = MarsRoverClient(networkLoader: mock)
        let e = expectation(description: "Wait for results")
        
        controller.fetchMarsRover(named: "curiosity") { (data, error) in
            e.fulfill()
            self.rover = data
        }
        
        wait(for: [e], timeout: 2)
        
        XCTAssertTrue(self.rover!.name == "Curiosity")
        XCTAssertTrue(self.rover!.numberOfPhotos > 1, "Expecting total photos greater than 1")
        mock.data = validSol1JSON
        let photosController = MarsRoverClient(networkLoader: mock)
        let photosExpection = expectation(description: "Wait for results")
        photosController.fetchPhotos(from: self.rover!, onSol: 1) { (data, error) in
            photosExpection.fulfill()
            self.photos = data
        }
        wait(for: [photosExpection], timeout: 2)
        XCTAssertTrue(self.photos!.count > 0, "Expecting multiple photos")
    }
}
