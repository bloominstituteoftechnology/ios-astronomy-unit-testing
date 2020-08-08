//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Morgan Smith on 8/5/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class AstronomyTests: XCTestCase {

    func testValidRoverData() {
        let expectation = self.expectation(description: "Collection view should return info for rover")

        let mockLoader = MockLoader(data: validRoverJSON, error: nil)

        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)

        marsRoverClient.fetchMarsRover(named: "Curiosity") {data, error in

            XCTAssertFalse(data?.name == "Curiousity")

            print("Fulfilling expectation")
            expectation.fulfill()

        }

        print("Waiting for expectation(s)")
        waitForExpectations(timeout: 5)
        print("Done waiting for expectations")
    }

    func testFetchPhotos() {
        let expectation = self.expectation(description: "Collection view should return sol photos")

        let mockLoader = MockLoader(data: validSol1JSON, error: nil)

        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)

        var marsRover: MarsRover? {
            var fetchedRover: MarsRover?
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
            if let error = error {
                NSLog("Error fetching info for curiosity: \(error)")
                return
            }
            fetchedRover = rover
        }
            return fetchedRover
        }




        marsRoverClient.fetchPhotos(from: marsRover!, onSol: 1) { (photoRefs, error) in
            XCTAssertFalse(((photoRefs?.isEmpty) != nil))

            print("Fulfilling expectation")
            expectation.fulfill()
        }

        print("Waiting for expectation(s)")
        waitForExpectations(timeout: 5)
        print("Done waiting for expectations")

    }


}
