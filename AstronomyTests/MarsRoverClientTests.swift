//
//  AstronomyMarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Marlon Raskin on 9/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

	
	func testMarsRoverClient() {
		let marsRoverClient = MarsRoverClient()
		let didFinishFetchingRover = self.expectation(description: "Finished fetching rover")
		marsRoverClient.fetchMarsRover(named: "curiosity") { (rover, error) in
			didFinishFetchingRover.fulfill()
			if let rover = rover {
				XCTAssertTrue(rover.status.rawValue == "active")
			}
		}
		wait(for: [didFinishFetchingRover], timeout: 5)
	}




}
