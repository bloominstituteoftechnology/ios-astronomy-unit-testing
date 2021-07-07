//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Joshua Sharp on 10/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    func testForRoverResult() {
        let mock = MockDataLoader()
        mock.data = validRoverJSON
        let controller = MarsRoverClient(dataLoader: mock)
        let resultsExpectation = expectation(description: "Wait for results")
        
        controller.fetchMarsRover(named: "Curiosity") { (rover, error) in
            XCTAssertNil(error)
            XCTAssertNotNil(rover)
            resultsExpectation.fulfill()
        }
        wait(for: [resultsExpectation], timeout: 2)
    }

    func testFetchPhotos() {
        let mock = MockDataLoader()
        mock.data = validRoverJSON
        let controller = MarsRoverClient(dataLoader: mock)
        let resultsExpectation = expectation(description: "Wait for results")
        
        controller.fetchMarsRover(named: "Curiosity") { (rover, error) in
            guard let rover = rover else {
                resultsExpectation.fulfill()
                return
            }
            let mock = MockDataLoader()
            mock.data = validSol1JSON
            let controller = MarsRoverClient(dataLoader: mock)
            controller.fetchPhotos(from: rover, onSol: 1, using: mock, completion: { (photos, error) in
                XCTAssertNil(error)
                XCTAssertNotNil(photos)
                XCTAssertEqual(photos?.count, 16)
                resultsExpectation.fulfill()
            })
        }
        wait(for: [resultsExpectation], timeout: 2)
    }
    
    func testForRoverResultFailure() {
        let mock = MockDataLoader()
        mock.data = invalidRoverJSON
        let controller = MarsRoverClient(dataLoader: mock)
        let resultsExpectation = expectation(description: "Wait for results")
        
        controller.fetchMarsRover(named: "Curiosity") { (rover, error) in
            XCTAssertNotNil(error)
            XCTAssertNil(rover)
            resultsExpectation.fulfill()
        }
        wait(for: [resultsExpectation], timeout: 2)
    }
    
    func testFetchPhotosFailure() {
        let mock = MockDataLoader()
        mock.data = validRoverJSON
        let controller = MarsRoverClient(dataLoader: mock)
        let resultsExpectation = expectation(description: "Wait for results")
        
        controller.fetchMarsRover(named: "Curiosity") { (rover, error) in
            guard let rover = rover else {
                resultsExpectation.fulfill()
                return
            }
            let mock = MockDataLoader()
            mock.data = invalidSol1JSON
            let controller = MarsRoverClient(dataLoader: mock)
            controller.fetchPhotos(from: rover, onSol: 1, using: mock, completion: { (photos, error) in
                XCTAssertNotNil(error)
                XCTAssertNil(photos)
                resultsExpectation.fulfill()
            })
        }
        wait(for: [resultsExpectation], timeout: 2)
    }
    
}
