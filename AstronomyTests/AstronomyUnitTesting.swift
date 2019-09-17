//
//  AstronomyUnitTesting.swift
//  AstronomyTests
//
//  Created by Luqmaan Khan on 9/17/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import XCTest
@testable import Astronomy

class AstronomyUnitTesting: XCTestCase {
    
    
    func testFetchMarsRover() {
        let mock = MockDataLoader()
        mock.data = validRoverJSON
        let controller = MarsRoverClient(networkDataLoader: mock)
        let completionExpectation = expectation(description: "Async Completion")
        controller.fetchMarsRover(named: "Curiosity") { _, _ in
            completionExpectation.fulfill()
        }
        wait(for: [completionExpectation], timeout: 5)
        guard let rover = controller.rover else {return}
        XCTAssertEqual("Curiosity", rover.name)
    }
    
    func testFetchPhotos() {
        let mock = MockDataLoader()
        mock.data = validRoverJSON
        let controller = MarsRoverClient(networkDataLoader: mock)
        let fetchRoverExpectation = expectation(description: "roverExpectation")
        controller.fetchMarsRover(named: "Curiosity") { _, _ in
            fetchRoverExpectation.fulfill()
        }
        
        wait(for: [fetchRoverExpectation], timeout: 40)
        guard let rover = controller.rover else {return}
        XCTAssertEqual("Curiosity", rover.name)
        
        mock.data = validSol1JSON
        let completionExpectation = expectation(description: "Async Completion")
        controller.fetchPhotos(from: rover, onSol: 1) { (photos, _) in
            completionExpectation.fulfill()
        }
        wait(for: [completionExpectation], timeout: 40)
        XCTAssertTrue(controller.photos.count > 0)
    }
}

