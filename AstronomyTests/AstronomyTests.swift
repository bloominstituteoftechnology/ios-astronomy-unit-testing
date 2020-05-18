//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Chris Dobek on 5/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    func testFetchMarsRover() {
        
        let mockDataLoader = MockDataLoader(data: validRoverJSON, error: nil)
        let expectation = self.expectation(description: "Wait for API to return results")
        let controller = MarsRoverClient(dataLoader: mockDataLoader)
        var rover: MarsRover?
        
        controller.fetchMarsRover(named: "Curiosity") { (mRover, error) in
            expectation.fulfill()
            rover = mRover
        }
        
        wait(for: [expectation], timeout: 3)
        XCTAssertEqual(rover!.name, "Curiosity")
        XCTAssertNotNil(rover)
        
    }
    
    func testFetchPhotos() {
        
    }

}
