//
//  MarsRoverClient_Tests.swift
//  MarsRoverClient Tests
//
//  Created by Michael Stoffer on 9/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClient_Tests: XCTestCase {

    var rover: MarsRover?
    var photos: [MarsPhotoReference]?
    
    func testFetchMarsRover() {
        let mock = MockLoader()
        mock.data = validRoverJSON
        
        let controller = MarsRoverClient(networkLoader: mock)
        let resultsExpection = expectation(description: "Wait for results")
        
        controller.fetchMarsRover(named: "curiosity") { (data, error) in
            resultsExpection.fulfill()
            self.rover = data
        }
        
        wait(for: [resultsExpection], timeout: 2)
        
        XCTAssertTrue(self.rover!.name == "Curiosity", "Expecting rover named Curiosity")
        XCTAssertTrue(self.rover!.numberOfPhotos > 1, "Expecting total photos greater than 1")
    }
    
    func testFetchPhotos() {
        let mock = MockLoader()
        mock.data = validRoverJSON
        
        let roverController = MarsRoverClient(networkLoader: mock)
        let roverExpection = expectation(description: "Wait for results")
        
        roverController.fetchMarsRover(named: "curiosity") { (data, error) in
            roverExpection.fulfill()
            self.rover = data
        }
        
        wait(for: [roverExpection], timeout: 2)
        
        XCTAssertTrue(self.rover!.name == "Curiosity", "Expecting rover named Curiosity")
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
