//
//  MarsRoverClientTests.swift
//  AstronomyUnitTests
//
//  Created by Diante Lewis-Jolley on 6/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy


class MarsRoverClientTests: XCTestCase  {

  

    func testFetchMarsRover() {

        let expectations = self.expectation(description: "Rovers should return data")
        let mockDataLoader = MockLoader(data: validSol1JSON, response: nil, error: nil)

        let networkClient = MarsRoverClient(networkLoader: mockDataLoader)

        networkClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
            XCTAssertNotNil(rover)
            XCTAssertEqual("Curiosity", rover?.name)
            expectations.fulfill()
        }

        waitForExpectations(timeout: 5)


    }

    func testFetchPhotos() {

        let expectations = self.expectation(description: "There should be photos!")

        let mockDataLoader = MockLoader(data: validRoverJSON, response: nil, error: nil)

        let networkClient = MarsRoverClient(networkLoader: mockDataLoader)

        let solDescriptions: [SolDescription] = []

        let rover = MarsRover(name: "Curiosity",
                              launchDate: Date(),
                              landingDate: Date(),
                              status: .active,
                              maxSol: 1,
                              maxDate: Date(),
                              numberOfPhotos: 1,
                              solDescriptions: solDescriptions)


        networkClient.fetchPhotos(from: rover, onSol: 1) { (photos, error) in
            guard let photos = photos else { return }

            XCTAssertNotNil(photos.isEmpty)
            expectations.fulfill()
        }

        waitForExpectations(timeout: 5)
        
    }




}
