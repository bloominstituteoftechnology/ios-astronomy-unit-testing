//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by William Bundy on 9/17/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MockLoader:NetworkDataLoader
{
	var lastURL:URL?
	var lastRequest:URLRequest?

	var data:Data?
	var error:Error?

	init(data:Data?, error:Error?)
	{
		self.data = data
		self.error = error
	}


	func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void)
	{
		self.lastURL = url
		DispatchQueue(label: "wb.Mock.bg", attributes: .concurrent).async {
			completion(self.data, self.error)
		}
	}

	func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void)
	{
		self.lastRequest = request
		DispatchQueue(label: "wb.Mock.bg", attributes: .concurrent).async {
			completion(self.data, self.error)
		}
	}
}


class AstronomyTests: XCTestCase
{
	func testMarsRover()
	{
		let marsRoverClient = MarsRoverClient(loader: MockLoader(data:validRoverJSON, error:nil))
		let expectation = self.expectation(description: "Wait for fetch to finish")
		marsRoverClient.fetchMarsRover(named: validRoverName) {rover, error in
			XCTAssertNil(error)
			XCTAssertNotNil(rover)
			expectation.fulfill()
		}
		waitForExpectations(timeout: 1, handler: nil)
	}

	func testFetchPhotos()
	{
		let marsRoverClient = MarsRoverClient(loader: MockLoader(data:validRoverJSON, error:nil))
		let expectation = self.expectation(description: "Wait for fetch to finish")
		marsRoverClient.fetchMarsRover(named: validRoverName) {rover, error in
			XCTAssertNil(error)
			XCTAssertNotNil(rover)

			marsRoverClient.loader = MockLoader(data:validSol1JSON, error:nil)
			marsRoverClient.fetchPhotos(from: rover!, onSol: 1) {
				photoReferences, error in
				XCTAssertNil(error)
				XCTAssertNotNil(photoReferences)
				XCTAssertEqual(photoReferences!.count, rover!.solDescriptions[1].totalPhotos)
				expectation.fulfill()
			}
		}
		waitForExpectations(timeout: 1, handler: nil)
	}
}
