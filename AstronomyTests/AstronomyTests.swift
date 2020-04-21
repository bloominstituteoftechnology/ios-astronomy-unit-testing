//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Joseph Rogers on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy
/*

Does decoding work? ✅
Does decoding fail when given bad data?✅
Does it build the correct URL?✅
Does it build the correct URLRequest?✅
are the search results saved properly?✅
Is the completion handler called when data is good?✅
Is the completion handler called when data is bad?✅
Is the completion handler called when the network fails?✅
create expectation
create controller
schedule work
then wait
*/

class AstronomyTests: XCTestCase {

    func testFetchRover() {
        func testFetchMarsRover() {
              let client = MarsRoverClient()
              let expectation = self.expectation(description: "Waiting for results")
               client.fetchMarsRover(named: "Curiosity") { (rover, error) in
                 expectation.fulfill()
              }
               wait(for: [expectation], timeout: 5)
           }
    }
    func testValidData() {
        
        let expectation = self.expectation(description: "Waiting for data")
        let roverClient = MarsRoverClient()

         roverClient.fetchMarsRover(named: "Curiosity") { data, error in
            guard let data = data else {
                XCTFail("Failed to get data")
                return
            }
            XCTAssertNotNil(data)
            expectation.fulfill()
        }
         wait(for: [expectation], timeout: 5)
    }
    func testPhotosFetch() {
        let rover = MarsRover(name: "Curiosity",
                                    launchDate: Date(),
                                    landingDate: Date(),
                                    status: .active,
                                    maxSol: 10,
                                    maxDate: Date(),
                                    numberOfPhotos: 4156,
                                    solDescriptions: [SolDescription(sol: 3, totalPhotos: 338, cameras: ["MAST"])])
        let expectation = self.expectation(description: "Waiting for Photos")
        let roverClient = MarsRoverClient()
         roverClient.fetchPhotos(from: rover, onSol: 3) { data, error in
            guard let data = data else {
                XCTFail("Failed to get photos for Curiosity")
                return
            }
            XCTAssertNotNil(data)
            XCTAssertEqual(data.count, 338)
            expectation.fulfill()
        }

         wait(for: [expectation], timeout: 10)
    }
    func testJSON() {
            let expectation = self.expectation(description: "TestingJSON")
            let dataLoader = MockDataLoader(data: validRoverJSON, error: nil)
            let roverClient = MarsRoverClient(dataLoader: dataLoader)

             roverClient.fetchMarsRover(named: "Curiosity") { rover, error in
                XCTAssertNoThrow(rover)

                 if let rover = rover {
                    XCTAssertTrue(rover.status == .active)
                    XCTAssertGreaterThan(rover.maxSol, 9)
                    XCTAssertEqual(rover.numberOfPhotos, 4156)
                }
                expectation.fulfill()
            }

             wait(for: [expectation], timeout: 5)
        }
    func testInvalidJSON() {
        let expectation = self.expectation(description: "Testing for invalid JSON")
        let dataLoader = MockDataLoader(data: invalidJSON, error: nil)
        let roverClient = MarsRoverClient(dataLoader: dataLoader)

         roverClient.fetchMarsRover(named: "Curiosity") { rover, error in
            XCTAssertNil(rover)
            XCTAssertNotNil(error)
            expectation.fulfill()
        }

         wait(for: [expectation], timeout: 5)
    }
    
}
