//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Ian French on 8/6/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    func testMarsRoverFetch() {
        let mockDataSession = MockLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockDataSession)
        let expectation = self.expectation(description: "Waiting for completin Rover Data")

        marsRoverClient.fetchMarsRover(named: "Curiosity") { (marsRover, error) in
            XCTAssertNil(error, "Expected nil error, instead generated : \(error!)")
            guard let marsRover = marsRover else {
                XCTFail("Failure getting Mars Rover data.")
                return
            }
            XCTAssertEqual(marsRover.name, "Curiosity")
            XCTAssertEqual(marsRover.numberOfPhotos, 4156)

            expectation.fulfill()
        }

        wait(for: [expectation], timeout: 10)

    }


    func testFetchPhotos() {
        let mockDataSessionPhoto = MockLoader(data: validRoverJSON, error: nil)
        var marsRoverClientPhoto = MarsRoverClient(networkLoader: mockDataSessionPhoto)
        let expectationPhoto = self.expectation(description: "Waiting for completin Rover Data")
        var rover: MarsRover?

        marsRoverClientPhoto.fetchMarsRover(named: "Curiosity") { (marsRover, error) in
            XCTAssertNil(error, "Expected nil error, instead generated : \(error!)")
            guard let marsRover = marsRover else {
                XCTFail("Failure getting Mars Rover data.")
                return
            }
            rover = marsRover
            expectationPhoto.fulfill()
        }
        wait(for: [expectationPhoto], timeout: 10)


        let mockPhotoDataTask = MockLoader(data: validSol1JSON, error: nil)
        marsRoverClientPhoto = MarsRoverClient(networkLoader: mockPhotoDataTask)
        let fetchPhotoExpectation = self.expectation(description: "Wait for photo cxollection")


        marsRoverClientPhoto.fetchPhotos(from: rover!, onSol: 1) { (marsPhotoReference, error) in
            XCTAssertNil(error, "Expected nil error, instead generated : \(error!)")

            guard let testPhotoReference = marsPhotoReference else {
                XCTFail("Mars Rover array is empty")
                return
            }


            XCTAssertEqual(testPhotoReference.first?.id, 4477)
            XCTAssertEqual(testPhotoReference.last?.id, 49201)


            fetchPhotoExpectation.fulfill()
        }
        wait(for: [fetchPhotoExpectation], timeout: 10)


    }

}
