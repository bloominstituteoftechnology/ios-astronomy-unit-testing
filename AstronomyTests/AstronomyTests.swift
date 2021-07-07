//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Lambda_School_Loaner_268 on 3/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class AstronomyTests: XCTestCase {
    
    var roverName = "Curiosity"
    
    func createController(data: Data) -> MarsRoverClient {
        let controller = MockLoader(data: data, error: nil)
        return MarsRoverClient(networkLoader: controller)
    }

    func testFetchMarsRover() {
        let testController = createController(data: validRoverJSON)
        let resultsExpectation = expectation(description: "Wait for rover results")
        var rover: MarsRover?
        var error: Error?
        
        testController.fetchMarsRover(named: roverName) { (roverData, errorData) in
            rover = roverData
            error = errorData
            
            resultsExpectation.fulfill()
        }
          wait(for: [resultsExpectation], timeout: 5)
        
        XCTAssertNotNil(rover)
        XCTAssertNil(error)
        XCTAssertEqual(rover?.name, roverName)
        
    }
    
    func testFetchPhotos() {
        let testRoverController = createController(data: validRoverJSON)
        let resultsExpectation = expectation(description: "Wait for rover")
        var rover: MarsRover?
        
        testRoverController.fetchMarsRover(named: roverName) { (roverData, errorData) in
            rover = roverData
            resultsExpectation.fulfill()
        }
        wait(for: [resultsExpectation], timeout: 2.0)
        XCTAssertNotNil(rover)
        
        let testSolController = createController(data: validSol1JSON)
        let photoExpectation = expectation(description: "Wait for Sol1 Results")
        
        var photoReferences: [MarsPhotoReference]?
        var error: Error?
        
        testSolController.fetchPhotos(from: rover!, onSol: 1) { (photoReference, errorData) in
            error = errorData
            photoReferences = photoReference
            photoExpectation.fulfill()
        }
        
        wait(for: [photoExpectation], timeout: 3.0)
        XCTAssertNil(error)
        XCTAssertNotNil(photoReferences)
    }
    
}
