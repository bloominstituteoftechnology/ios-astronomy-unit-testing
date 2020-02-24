//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Kenny on 2/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    
    func createMockController(mockData: Data) -> MarsRoverClient {
        let mock = MockDataLoader(data: mockData, error: nil)
        return MarsRoverClient(networkLoader: mock)
    }
    
    let roverName = "Curiosity"
    
    func testFetchMarsRover() {
        let mockController = createMockController(mockData: validRoverJSON)
        let resultsExpectation = expectation(description: "Wait for Mars Rover Results")
        var rover: MarsRover?
        var error: Error?
        mockController.fetchMarsRover(named: roverName) { (roverData, errorData) in
            rover = roverData
            error = errorData
            resultsExpectation.fulfill()
        }
        wait(for: [resultsExpectation], timeout: 2.0)
        XCTAssertNotNil(rover)
        XCTAssertNil(error)
        XCTAssertEqual(rover?.name, roverName)
    }
    
    func testFetchPhotos() {
        //create mars Rover
        let roverMockController = createMockController(mockData: validRoverJSON)
        var rover: MarsRover?
        let resultsExpectation = expectation(description: "Wait for Sol1 results")
        roverMockController.fetchMarsRover(named: roverName) { (roverData, errorData) in
            rover = roverData
            resultsExpectation.fulfill()
        }
        wait(for: [resultsExpectation], timeout: 2.0)
        
        let sol1MockController = createMockController(mockData: validSol1JSON)
        let photosExpectation = expectation(description: "Wait for photo results")
        var photoReferences: [MarsPhotoReference]?
        var error: Error?
        sol1MockController.fetchPhotos(from: rover!, onSol: 1) { (photoReferenceData, errorData) in
            error = errorData
            photoReferences = photoReferenceData
            photosExpectation.fulfill()
        }
        wait(for: [photosExpectation], timeout: 2.0)
        XCTAssertNotNil(photoReferences)
        XCTAssertNil(error)
        XCTAssertEqual(photoReferences?[0].id, 4477)
    }

}
