//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Jonathan Ferrer on 6/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy
class MarsRoverClientTests: XCTestCase {

    func testFetchMarsRover() {
        let mockData = MockLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockData)
        let roverExpectation = expectation(description: "Rover should exsist")

        marsRoverClient.fetchMarsRover(named: "curiosity") { (rover, error) in
            XCTAssertFalse(rover == nil)
            XCTAssertTrue(error == nil)
            roverExpectation.fulfill()
        }
        waitForExpectations(timeout: 5)
    }

    func testFetchMarsRoverError() {
        let error = NSError(domain: "com.JonathanFerrer.Astronomy", code: -1, userInfo: nil)
        let roverExpectaion = self.expectation(description: "Rover data should be empty ")
        let mockData = MockLoader(data: nil, error: error)
        let marsRoverClient = MarsRoverClient(networkLoader: mockData)
        
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
            XCTAssertTrue(rover == nil)
            XCTAssertFalse(error == nil)
            roverExpectaion.fulfill()
        }
        waitForExpectations(timeout: 5)
    }



    func testFetchPhotos() {
        let mockData = MockLoader(data: validSol1JSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockData)
        let photoExpectation = expectation(description: "Photo should be there")
        let solDescription = [SolDescription]()
        let rover = MarsRover(name: "Curiosity", launchDate: Date(), landingDate: Date(), status: .active, maxSol: 1, maxDate: Date(), numberOfPhotos: 1, solDescriptions: solDescription)

        marsRoverClient.fetchPhotos(from: rover, onSol: 1) { (photos, error) in
            XCTAssertTrue(error == nil)
            XCTAssertFalse(photos == nil)
            photoExpectation.fulfill()
        }
        waitForExpectations(timeout: 5)
    }

    func testFetchPhotosErrors() {
        let error = NSError(domain: "com.JonathanFerrer.Astronomy", code: -1, userInfo: nil)
        let mockData = MockLoader(data: nil, error: error)
        let marsRoverClient = MarsRoverClient(networkLoader: mockData)
        let photoExpectation = expectation(description: "Photo should be there")
        let solDescription = [SolDescription]()
        let rover = MarsRover(name: "Curiosity", launchDate: Date(), landingDate: Date(), status: .active, maxSol: 1, maxDate: Date(), numberOfPhotos: 1, solDescriptions: solDescription)

        marsRoverClient.fetchPhotos(from: rover, onSol: 1) { (photos, error) in
            XCTAssertFalse(error == nil)
            XCTAssertTrue(photos == nil)
            photoExpectation.fulfill()
        }
        waitForExpectations(timeout: 5)
    }

}
