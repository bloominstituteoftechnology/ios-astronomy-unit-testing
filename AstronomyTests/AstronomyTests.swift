//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Enrique Gongora on 3/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest

class AstronomyTests: XCTestCase {

    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(abbreviation: "GMT")
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()

    func testFetchMarsRover() {
        var mock = MockDataLoader()
        mock.data = validRoverJSON
        let mrc = MarsRoverClient(networkLoader: mock)
        var rover: MarsRover?

        let expectation = self.expectation(description: "Waiting for API to return Mars Rover data")

        mrc.fetchMarsRover(named: "Curiosity") { mRover, error in
            expectation.fulfill()
            rover = mRover
        }
        wait(for: [expectation], timeout: 3)
        XCTAssertEqual(rover!.name, "Curiosity")
        XCTAssertNotNil(rover)
    }

    func testFetchPhotos() {
        var mock = MockDataLoader()
        mock.data = validSol1JSON
        let mrc = MarsRoverClient(networkLoader: mock)

        let rover = MarsRover(name: "Curiosity", launchDate: Date(), landingDate: Date(), status: .complete, maxSol: 7, maxDate: Date(), numberOfPhotos: 7, solDescriptions: [SolDescription(sol: 7, totalPhotos: 7, cameras: ["Middle Side Cam Located in the Back"])])

        var photoReferences: [MarsPhotoReference] = []

        let expectation = self.expectation(description: "Waiting for photo fetched photos")

        mrc.fetchPhotos(from: rover, onSol: 1) { (pics, error) in
            expectation.fulfill()
            photoReferences = pics!
        }
        wait(for: [expectation], timeout: 3)
        XCTAssert(photoReferences.count > 0)
    }

    func testDecodingRoverModel() {
        var mock = MockDataLoader()
        mock.data = validRoverJSON
        let mrc = MarsRoverClient(networkLoader: mock)
        var rover: MarsRover?

        mrc.fetchMarsRover(named: "Curiosity") { marsRover, error in
            let url = Bundle.main.url(forResource: "MockJSON", withExtension: "json")
            let data = try! Data(contentsOf: url!)
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            decoder.dateDecodingStrategy = .formatted(self.dateFormatter)
            let marsRover = try! decoder.decode(MarsRover.self, from: data)
                rover = marsRover
            XCTAssertNotNil(rover)
            XCTAssertEqual(rover!.name, "Curiosity")
            XCTAssertEqual(rover?.maxSol, 10)
        }
    }
}
