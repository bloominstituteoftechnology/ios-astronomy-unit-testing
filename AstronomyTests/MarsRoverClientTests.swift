//
//  AstronomyTests.swift
//  MarsRoverClientTests
//
//  Created by Josh Kocsis on 8/5/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {



    func testFetchMarsRover() {

        let mockLoader = MockLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient()
        let roverExpectation = self.expectation(description: "Wait for rover")

        marsRoverClient.fetchMarsRover(named: "Curiosity", using: mockLoader) { (possibleRover, possibleError) in
            XCTAssertTrue(possibleRover?.name == "Curiosity")
            XCTAssertFalse(possibleRover?.name == "John")
            XCTAssertNil(possibleError)
            roverExpectation.fulfill()
        }
        wait(for: [roverExpectation], timeout: 5)
    }

    func testFetchPhotos() {
        var marsRover: MarsRover?
        var photoReference = [MarsPhotoReference]()
        let mockLoader = MockLoader(data: validSol1JSON, error: nil)
        let marsRoverClient = MarsRoverClient()
        let roverExpectation = self.expectation(description: "Wait for rover")
        let photoExpectation = self.expectation(description: "Wait for photo")

        marsRoverClient.fetchMarsRover(named: "Curiosity") { (possibleRover, possibleError) in
            marsRover = possibleRover
            XCTAssertNil(possibleError)
            roverExpectation.fulfill()
        }
        wait(for: [roverExpectation], timeout: 5)

        guard let rover = marsRover else { return }


        marsRoverClient.fetchPhotos(from: rover, onSol: rover.solDescriptions[1].sol, using: mockLoader) { (possiblePhoto, possibleError) in
            photoReference = possiblePhoto ?? []
            XCTAssert(photoReference.count > 0)
            XCTAssertNil(possibleError)
            photoExpectation.fulfill()
        }
        wait(for: [photoExpectation], timeout: 5)
    }

}



