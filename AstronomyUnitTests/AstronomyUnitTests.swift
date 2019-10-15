//
//  AstronomyUnitTests.swift
//  AstronomyUnitTests
//
//  Created by Alex Rhodes on 10/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class AstronomyUnitTests: XCTestCase {
    
    var rover: MarsRover?
    
    func testFetchMarsRover() {
        let mock = MockDataLoader()
        mock.data = validRoverJSON
        let controller = MarsRoverClient(dataLoader: mock)
        let resultsExpectation = expectation(description: "wait for results")
        
        controller.fetchMarsRover(named: "Curiosity") { (rover, error) in
            self.rover = rover
            resultsExpectation.fulfill()
        }
        wait(for: [resultsExpectation], timeout: 2)
        
    }
    
    func testFetchPhotos() {
        guard let rover = rover else {return}
        let mock = MockDataLoader()
        mock.data = validRoverJSON
        let controller = MarsRoverClient(dataLoader: mock)
        let resultsExpectation = expectation(description: "wait for results")
        
        controller.fetchPhotos(from: rover, onSol: 1) { (photoReference, error) in
            resultsExpectation.fulfill()
        }
        wait(for: [resultsExpectation], timeout: 2)
    }
    
}
