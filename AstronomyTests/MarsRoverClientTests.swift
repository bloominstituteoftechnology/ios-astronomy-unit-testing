//
//  MarsRoverClientTests.swift
//  MarsRoverClientTests
//
//  Created by Michael Redig on 6/17/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

	func validData() -> (rover: MarsRover?, photoReferences: [MarsPhotoReference]?) {
		let decoder = MarsPhotoReference.jsonDecoder
		decoder.keyDecodingStrategy = .convertFromSnakeCase
		let roverDict = try! decoder.decode([String: MarsRover]?.self, from: validRoverJSON)
		let rover = roverDict?["photo_manifest"]

		let photoRefDict = try! decoder.decode([String: [MarsPhotoReference]]?.self, from: validSol1JSON)
		let photoRefs = photoRefDict?["photos"]
		return (rover, photoRefs)
	}

	func testFetchMarsRoverSuccess() {
		let mockLoader = MockDataLoader(data: validRoverJSON, error: nil)
		let (validRover, _) = validData()
		let waitForLoading = expectation(description: "Wait for async load")

		let client = MarsRoverClient(networkLoader: mockLoader)

		client.fetchMarsRover(named: "curiosity") { (rover, error) in
			if let error = error {
				XCTFail("Error fetching info for curiosity: \(error)")
				return
			}
			XCTAssertEqual(validRover?.launchDate, rover?.launchDate)
			waitForLoading.fulfill()
		}
		waitForExpectations(timeout: 10) { (error) in
			if let error = error {
				XCTFail("Error waiting for expectations: \(error)")
			}
		}
	}

	func testFetchPhotosSuccess() {
		let mockLoader = MockDataLoader(data: validSol1JSON, error: nil)
		let waitForLoading = expectation(description: "Wait for async load")
		let (rover, validPhotoRefs) = validData()

		let client = MarsRoverClient(networkLoader: mockLoader)

		client.fetchPhotos(from: rover!, onSol: 1) { (photoReferences, error) in
			if let error = error {
				XCTFail("There was an error fetching photos: \(error)")
				return
			}

			XCTAssert(validPhotoRefs?.count == photoReferences?.count)
			waitForLoading.fulfill()
		}
		waitForExpectations(timeout: 10) { (error) in
			if let error = error {
				XCTFail("Error waiting for expectations: \(error)")
			}
		}
	}

}
