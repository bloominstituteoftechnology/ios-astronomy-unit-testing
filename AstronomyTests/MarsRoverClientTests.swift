//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Cora Jacobson on 9/30/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    func testFetchMarsRover() {
        let mock = MockLoader()
        mock.data = validRoverJSON
        
        let client = MarsRoverClient(dataLoader: mock)
        let resultsExpectation = expectation(description: "Wait for rover info")
        
        var roverInfo: MarsRover?
        
        client.fetchMarsRover(named: "curiosity") { (rover, error) in
            roverInfo = rover
            resultsExpectation.fulfill()
        }
        
        wait(for: [resultsExpectation], timeout: 2)
        XCTAssertNotNil(roverInfo)
        XCTAssertEqual(roverInfo?.name, "Curiosity")
        XCTAssertEqual(roverInfo?.status, MarsRover.Status(rawValue: "active"))
    }
    
    func testBadJSON() {
        let mock = MockLoader()
        mock.data = badRoverJSON
        
        let client = MarsRoverClient(dataLoader: mock)
        let resultsExpectation = expectation(description: "Wait for rover info")
        
        var roverInfo: MarsRover?
        
        client.fetchMarsRover(named: "curiosity") { (rover, error) in
            roverInfo = rover
            resultsExpectation.fulfill()
        }
        
        wait(for: [resultsExpectation], timeout: 2)
        XCTAssertNil(roverInfo)
        XCTAssertNotNil(client.error)
    }
    
    func testNoData() {
        let mock = MockLoader()
        mock.data = noData
        
        let client = MarsRoverClient(dataLoader: mock)
        let resultsExpectation = expectation(description: "Wait for rover info")
        
        var roverInfo: MarsRover?
        
        client.fetchMarsRover(named: "curiosity") { (rover, error) in
            roverInfo = rover
            resultsExpectation.fulfill()
        }
        
        wait(for: [resultsExpectation], timeout: 2)
        XCTAssertNil(roverInfo)
        XCTAssertNil(client.error)
    }
    
    func testFetchPhotos() {
        let mock = MockLoader()
        mock.data = validRoverJSON
        
        let client = MarsRoverClient(dataLoader: mock)
        let roverExpectation = expectation(description: "Wait for rover info")
        
        var photos: [MarsPhotoReference]?
        var roverInfo: MarsRover?
        
        client.fetchMarsRover(named: "curiosity") { (rover, error) in
            roverInfo = rover
            roverExpectation.fulfill()
        }
        
        wait(for: [roverExpectation], timeout: 2)
        
        XCTAssertNotNil(roverInfo)
        
        mock.data = validSol1JSON
        
        let photoExpectation = expectation(description: "Wait for photo info")
        guard let rover = roverInfo else { return }
        
        client.fetchPhotos(from: rover, onSol: 1) { (photoRefs, error) in
            photos = photoRefs
            photoExpectation.fulfill()
        }
        
        wait(for: [photoExpectation], timeout: 2)
        XCTAssertNotNil(photos)
        XCTAssertEqual(photos?.count, 16)
    }

}
