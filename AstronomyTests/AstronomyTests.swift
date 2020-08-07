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

        // Mimicking the URLSessionDataTask, and assuming that we get data and no response or error.
        let mockLoader = MockLoader(data: validRoverJSON, error: nil)

        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        let photosView = PhotosCollectionViewController()

        marsRoverClient.fetchMarsRover(named: "Curiosity") {_,_ in

            // This should fail
            XCTAssertFalse()

            print("Fulfilling expectation")
            expectation.fulfill()

        }

        print("Waiting for expectation(s)")
        waitForExpectations(timeout: 5)
        print("Done waiting for expectations")
    }

    func testFetchPhotos() {

    }


}
