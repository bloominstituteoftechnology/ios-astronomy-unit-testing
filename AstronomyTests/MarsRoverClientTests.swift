//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Ciara Beitel on 10/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    
    func testFetchMarsRoverGoodData() {
        let resultsExpectation = expectation(description: "Wait for results")
        let mock = MockDataLoader()
        mock.data = goodDataResults
        
        let controller = MarsRoverClient(networkLoader: mock)
        controller.fetchMarsRover(named: "Curiosity") { (rover, error) in
            resultsExpectation.fulfill()
            XCTAssertEqual(rover?.name, "Curiosity" )
            XCTAssertEqual(rover?.numberOfPhotos, 4156)
        }
        
        wait(for: [resultsExpectation], timeout: 2)
    }
    
    func testFetchMarsRoverBadData() {
        let resultsExpectation = expectation(description: "Wait for results")
        let mock = MockDataLoader()
        mock.data = badDataResults
        
        let controller = MarsRoverClient(networkLoader: mock)
        controller.fetchMarsRover(named: "Curiosity") { (rover, error) in
            resultsExpectation.fulfill()
            XCTAssertEqual(rover?.name, "Curiosity" )
            XCTAssertEqual(rover?.numberOfPhotos, 0)
        }
        
        wait(for: [resultsExpectation], timeout: 2)
    }
    
    func testFetchMarsRoverNoData() {
        let resultsExpectation = expectation(description: "Wait for results")
        let mock = MockDataLoader()
        mock.data = noDataResults
        
        let controller = MarsRoverClient(networkLoader: mock)
        controller.fetchMarsRover(named: "Curiosity") { (rover, error) in
            resultsExpectation.fulfill()
            XCTAssertNil(rover)
        }
        
        wait(for: [resultsExpectation], timeout: 2)
    }
    
    func testFetchPhotos() {
        let resultsExpectation = expectation(description: "Wait for photo results")
        let roverMock = MockDataLoader()
        roverMock.data = goodDataResults
        
        let roverController = MarsRoverClient(networkLoader: roverMock)
        roverController.fetchMarsRover(named: "Curiosity") { (rover, error) in
            guard let rover = rover else {
                resultsExpectation.fulfill()
                return
            }
            let photoMock = MockDataLoader()
            photoMock.data = validSol1JSON
            
            let photoController = MarsRoverClient(networkLoader: photoMock)
            photoController.fetchPhotos(from: rover, onSol: 1) { (photoRefs, error) in
                XCTAssertEqual(photoRefs?.count, 16)
                resultsExpectation.fulfill()
            }
        }
        wait(for: [resultsExpectation], timeout: 2)
    }
}
