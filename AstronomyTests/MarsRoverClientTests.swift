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
		
		let expectation = self.expectation(description: "error should be nil and Rover should exist")
		let mockLoader = MockLoader(data: TestJSON().validRoverJSON, response: nil, error: nil)
		let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
		
		marsRoverClient.fetchMarsRover(named: "Curiosity") { rover, error in
			XCTAssertNil(error)
			XCTAssertNotNil(rover)
			//print(rover!)
			expectation.fulfill()
		}
		waitForExpectations(timeout: 1.5)
	}
	
	func testFetchPhotos() {
		
	}

}
