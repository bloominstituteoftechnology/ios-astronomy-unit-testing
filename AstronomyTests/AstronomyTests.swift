//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Jeffrey Santana on 9/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class AstronomyTests: XCTestCase {

	var controller: MarsRoverClient!
	
    override func setUp() {
		controller = MarsRoverClient()
    }
	
	func testFetchMarsRover() {
		let didFinish = expectation(description: "Rover")
		let mockLoader = MockDataLoader()
		mockLoader.data = validRoverJSON
		controller = MarsRoverClient(networkLoader: mockLoader)
		
		controller.fetchMarsRover(named: "curiosity") { (rover, error) in
			XCTAssertEqual(rover?.name, "Curiosity")
			didFinish.fulfill()
		}
		
		wait(for: [didFinish], timeout: 5)
	}
	
	func testFetchMarsRoverError() {
		let didFinish = expectation(description: "Rover")
		
		controller.fetchMarsRover(named: "JeffProbe") { (rover, error) in
			guard let realError = error as? NetworkError else {
				XCTFail()
				return
			}
			XCTAssertEqual(realError, NetworkError.notDecoding)
			didFinish.fulfill()
		}
		
		wait(for: [didFinish], timeout: 10)
	}
	
	func testFetchPhotos() {
		let didFinish = expectation(description: "Photos")
		let mockLoader = MockDataLoader()
		mockLoader.data = validSol1JSON
		controller = MarsRoverClient(networkLoader: mockLoader)
		
		let rover = (try! MarsPhotoReference.jsonDecoder.decode([String: MarsRover].self, from: validRoverJSON))["photo_manifest"]!
		
		XCTAssertEqual(rover.name, "Curiosity")
		
		controller.fetchPhotos(from: rover, onSol: 1) { (photoRefs, error) in
			XCTAssertNotNil(photoRefs)
			XCTAssertEqual(photoRefs?[0].imageURL.absoluteString, "http://mars.jpl.nasa.gov/msl-raw-images/msss/00001/mcam/0001ML0000001000I1_DXXX.jpg")
			didFinish.fulfill()
		}
		
		wait(for: [didFinish], timeout: 5)
	}
	
	func testFetchPhotosError() {
		let didFinish = expectation(description: "Photos")
		let mockLoader = MockDataLoader()
		controller = MarsRoverClient(networkLoader: mockLoader)
		
		let rover = (try! MarsPhotoReference.jsonDecoder.decode([String: MarsRover].self, from: validRoverJSON))["photo_manifest"]!
		
		controller.fetchPhotos(from: rover, onSol: -10) { (photoRefs, error) in
			guard let realError = error as? NetworkError else {
				XCTFail()
				return
			}
			XCTAssertEqual(realError, NetworkError.noData)
			didFinish.fulfill()
		}
		
		wait(for: [didFinish], timeout: 10)
	}

}
