//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Hector Steven on 6/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy


class MarsRoverClientTests: XCTestCase {
	
	func testFetchMarsRover() {
		
		let expectation = self.expectation(description: "Rover should exist")
		let mockLoader = MockLoader(data: TestJSON().validRoverJSON, response: nil, error: nil)
		let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
		
		marsRoverClient.fetchMarsRover(named: "Curiosity") { rover, error in
			XCTAssertNotNil(rover)
			//print(rover!)
			expectation.fulfill()
		}
		waitForExpectations(timeout: 1.5)
	}
	
	func testFetchPhotos() {
		let expectation = self.expectation(description: "number of rover photos should not be empty")
		let mockLoader = MockLoader(data: TestJSON().validSol1JSON, response: nil, error: nil)
		let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
		
		let solDescriptions: [SolDescription] = []
		let marsRover = MarsRover(name: "Curiosity", launchDate: Date(), landingDate: Date(), status: .active, maxSol: 1, maxDate: Date(), numberOfPhotos: 1, solDescriptions: solDescriptions)
		
		
		marsRoverClient.fetchPhotos(from: marsRover, onSol: 1) { (roverPhotos, error) in
			guard let roverPhotos = roverPhotos else { return }
			
			XCTAssertFalse(roverPhotos.isEmpty)
			expectation.fulfill()
		}
		
		waitForExpectations(timeout: 5)
	}

}
