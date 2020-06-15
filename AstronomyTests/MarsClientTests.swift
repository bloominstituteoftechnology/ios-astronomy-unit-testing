//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Mark Poggi on 5/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsClientTests: XCTestCase {

    func testFetchMarsRover() {
        var rover: MarsRover?
        var error: Error?

        let expectation = self.expectation(description: "A valid rover exists")
        let mockLoader = MockDataLoader(data: .mockJSONData(with: "GoodRoverData"), response: nil, error: nil)
        let marsRoverClient = MarsRoverClient(dataLoader: mockLoader)

        marsRoverClient.fetchMarsRover(named: "Curiosity") { (marsRover, errorReturn) in
            rover = marsRover
            error = errorReturn
            XCTAssert(marsRover != nil)
            XCTAssertNil(error)
            XCTAssertNotNil(rover)

            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10)
    }

    func testFetchPhotos() {
        var rover: MarsRover?
        var error: Error?
        var photoReferences: [MarsPhotoReference]?

        let roverExpectation = self.expectation(description: "Received Rover results.")

        let mockRoverLoader = MockDataLoader(data: .mockJSONData(with: "GoodRoverData"), response: nil, error: nil)
        let marsRoverClient = MarsRoverClient(dataLoader: mockRoverLoader)

        marsRoverClient.fetchMarsRover(named: "Curiosity") { (roverReturn, errorReturn) in
            rover = roverReturn
            roverExpectation.fulfill()
        }
        wait(for: [roverExpectation], timeout: 10)

        XCTAssertNotNil(rover)

        let solExpectation = expectation(description: "Received Photo results.")

        let mockSolLoader = MockDataLoader(data: .mockJSONData(with: "GoodSolData"), response: nil, error: nil)
        let marsRoverClient2 = MarsRoverClient(dataLoader: mockSolLoader)

        marsRoverClient2.fetchPhotos(from: rover!, onSol: 1) { (photoReturn, errorReturn) in
            error = errorReturn
            photoReferences = photoReturn
            solExpectation.fulfill()
        }
        wait(for: [solExpectation], timeout: 10)

        XCTAssertNil(error)
        XCTAssertNotNil(photoReferences)
    }

    func testUnavailableNetwork() {
        var rover: MarsRover?
        var error: Error?
        let expectation = self.expectation(description: "Wait for results")

        let mockDataLoader = MockDataLoader(data: nil, response: nil, error: NSError(domain: NSURLErrorDomain, code: NSURLErrorCannotConnectToHost, userInfo: nil))

        let controller = MarsRoverClient(dataLoader: mockDataLoader)

        controller.fetchMarsRover(named: "Curiosity") { (roverResult, errorResult) in
            rover = roverResult
            error = errorResult
            XCTAssertNil(rover)
            XCTAssertNotNil(error)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1)
    }

    func testBadRoverData() {
        var rover: MarsRover?
        var error: Error?

        let expectation = self.expectation(description: "Wait for results")

         let mockRoverLoader = MockDataLoader(data: .mockJSONData(with: "BadRoverData"), response: nil, error: nil)

        let controller = MarsRoverClient(dataLoader: mockRoverLoader)

        controller.fetchMarsRover(named: "Curiosity") { (roverResult, errorResult) in
            rover = roverResult
            error = errorResult
            XCTAssertNil(rover)
            XCTAssertNotNil(error)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 1)

    }
}
