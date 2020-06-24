//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Claudia Contreras on 6/3/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class AstronomyTests: XCTestCase {

    func testMarsRoverFetch() {
        let mockSession = MockLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockSession)
        let expectation = self.expectation(description: "Waiting for Rover Data")
        
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (marsRover, error) in
            XCTAssertNil(error, "Expected error = nil, but got error: \(error!)")
            guard let marsRover = marsRover else {
                XCTFail("Mars Rover data unexpectedly equals nil.")
                return
            }
            XCTAssertEqual(marsRover.name, "Curiosity")
            XCTAssertEqual(marsRover.numberOfPhotos, 4156)

            expectation.fulfill()
        }

        wait(for: [expectation], timeout: 5)
        
    }

}
