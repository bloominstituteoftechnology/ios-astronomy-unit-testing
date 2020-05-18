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
        let mockLoader = MockDataLoader(data: .mockJSONData(with: "GoodRoverData"), response: nil, error: nil)
        let marsRoverClient = MarsRoverClient(dataLoader: mockLoader)
        let expectation = self.expectation(description: "A valid rover exists")

        marsRoverClient.fetchMarsRover(named: "Curiosity") { (marsRover, error) in
            XCTAssert(marsRover != nil)

            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
    }

    func testFetchPhotos() {
        let expectation = self.expectation(description: "Valid photos exists")

        let mockLoader = MockDataLoader(data: .mockJSONData(with: "GoodSolData"), response: nil, error: nil)

        let marsRoverClient = MarsRoverClient(dataLoader: mockLoader)

        let marsRover = (try! MarsPhotoReference.jsonDecoder.decode([String: MarsRover].self, from: validRoverJSON))["photo_manifest"]!

        marsRoverClient.fetchPhotos(from: marsRover, onSol: 1) { (photos, error) in
                  XCTAssert(photos != nil)
                  expectation.fulfill()
              }

        wait(for: [expectation], timeout: 5)
    }


 let validRoverJSON = """
{
    "photo_manifest": {
        "name": "Curiosity",
        "landing_date": "2012-08-06",
        "launch_date": "2011-11-26",
        "status": "active",
        "max_sol": 10,
        "max_date": "2012-08-16",
        "total_photos": 4156,
        "photos": [{
                "sol": 0,
                "earth_date": "2012-08-06",
                "total_photos": 3702,
                "cameras": [
                    "CHEMCAM",
                    "FHAZ",
                    "MARDI",
                    "RHAZ"
                ]
            },
            {
                "sol": 1,
                "earth_date": "2012-08-07",
                "total_photos": 16,
                "cameras": [
                    "MAHLI",
                    "MAST",
                    "NAVCAM"
                ]
            },
            {
                "sol": 2,
                "earth_date": "2012-08-08",
                "total_photos": 74,
                "cameras": [
                    "NAVCAM"
                ]
            },
            {
                "sol": 3,
                "earth_date": "2012-08-09",
                "total_photos": 338,
                "cameras": [
                    "MAST"
                ]
            },
            {
                "sol": 10,
                "earth_date": "2012-08-16",
                "total_photos": 26,
                "cameras": [
                    "CHEMCAM",
                    "MAHLI",
                    "NAVCAM"
                ]
            }
        ]
    }
}
""".data(using: .utf8)!
}
