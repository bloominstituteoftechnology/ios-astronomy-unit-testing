//
//  MarsRoverClientTests.swift
//  MarsRoverClientTests
//
//  Created by Elizabeth Wingate on 3/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
       
        var marsRover: MarsRover?
        var photoRefs: [MarsPhotoReference]?
        var error: Error?

        func testFetchMarsRover() {
            let mock = MockDataLoader()
            mock.data = validRoverJSON

            let controller = MarsRoverClient(networkLoader: mock)
            let resultsExpection = expectation(description: "Wait for results")

            controller.fetchMarsRover(named: "Curiosity") { (marsRover, error) in
                if let marsRover = marsRover {
                    self.marsRover = marsRover
                }

                if let error = error {
                    self.error = error
                }

                resultsExpection.fulfill()
            }

            wait(for: [resultsExpection], timeout: 2)

            XCTAssertEqual("Curiosity", marsRover?.name)
        }

        func testFetchPhotos() {
            testFetchMarsRover()

            let mock = MockDataLoader()
            mock.data = validSol1JSON

            let controller = MarsRoverClient(networkLoader: mock)
            let resultsExpection = expectation(description: "Wait for results")

            controller.fetchPhotos(from: marsRover!, onSol: 1) { (photos, error) in
                if let photos = photos {
                    self.photoRefs = photos
                }
                resultsExpection.fulfill()
            }

            wait(for: [resultsExpection], timeout: 2)

            XCTAssertNotNil(photoRefs)
            XCTAssertTrue(photoRefs!.count > 0)


        }

    }
