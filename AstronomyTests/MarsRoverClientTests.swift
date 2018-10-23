//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Daniela Parra on 10/22/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    
    func testDecodeValidMarsRoverJSON() {
        let mockLoader = MockLoader(data: validRoverJSON, error: nil)
        let client = MarsRoverClient(networkLoader: mockLoader)
        let roverExpectation = expectation(description: "Fetch Mars Rover expectation")
        
        client.fetchMarsRover(named: "curiosity") { (marsRover, error) in
            
            if let rover = marsRover {
                XCTAssertEqual(rover.name, "Curiosity")
                XCTAssertEqual(rover.numberOfPhotos, 4156)
                XCTAssertEqual(rover.solDescriptions.count, 5)
                XCTAssertNil(error)
                roverExpectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testDecodeValidPhotosJSON() {
        let mockLoader = MockLoader(data: validSol1JSON, error: nil)
        let client = MarsRoverClient(networkLoader: mockLoader)
        let photosExpectation = expectation(description: "Fetch Mars Photos expectation")
        let dictionary = try! MarsRover.jsonDecoder.decode([String : MarsRover].self, from: validRoverJSON)
        if let rover = dictionary["photoManifest"] {
            client.fetchPhotos(from: rover, onSol: 1) { (photos, error) in
                if let photos = photos {
                    XCTAssertNotEqual(photos.count, 0)
                    XCTAssertEqual(photos.count, 16)
                    XCTAssertEqual(photos.first?.sol, 1)
                    XCTAssertEqual(photos.first?.id, 4477)
                    XCTAssertNil(error)
                    photosExpectation.fulfill()
                }
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testInvalidMarsRoverJSON() {
        let mockLoader = MockLoader(data: invalidRoverJSON, error: nil)
        let client = MarsRoverClient(networkLoader: mockLoader)
        let roverExpectation = expectation(description: "Fetch Mars Rover expectation")
        
        let errorText = "The data couldn’t be read because it is missing."
        client.fetchMarsRover(named: "curiosity") { (marsRover, error) in
            if let error = error {
                XCTAssertNil(marsRover)
                XCTAssertEqual(error.localizedDescription, errorText)
                roverExpectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testInvalidPhotosJSON() {
        let mockLoader = MockLoader(data: invalidSol1JSON, error: nil)
        let client = MarsRoverClient(networkLoader: mockLoader)
        let photosExpectation = expectation(description: "Fetch Mars Photos expectation")
        let dictionary = try! MarsRover.jsonDecoder.decode([String : MarsRover].self, from: validRoverJSON)
        
        let errorText = "The data couldn’t be read because it is missing."
        if let rover = dictionary["photoManifest"] {
            client.fetchPhotos(from: rover, onSol: 1) { (photos, error) in
                if let error = error {
                    XCTAssertNil(photos)
                    XCTAssertEqual(error.localizedDescription, errorText)
                    photosExpectation.fulfill()
                }
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testNoMarsRoverData() {
        let mockLoader = MockLoader(data: nil, error: nil)
        let client = MarsRoverClient(networkLoader: mockLoader)
        let roverExpectation = expectation(description: "Fetch Mars Rover expectation")

        client.fetchMarsRover(named: "curiosity") { (marsRover, error) in

            if let error = error {
                XCTAssertNil(marsRover)
                XCTAssertEqual(error.localizedDescription, "The operation couldn’t be completed. (com.LambdaSchool.Astronomy.ErrorDomain error -1.)")
                roverExpectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testNoPhotosData() {

        let mockLoader = MockLoader(data: nil, error: nil)
        let client = MarsRoverClient(networkLoader: mockLoader)
        let photosExpectation = expectation(description: "Fetch Mars Photos expectation")
        let dictionary = try! MarsRover.jsonDecoder.decode([String : MarsRover].self, from: validRoverJSON)
        
        if let rover = dictionary["photoManifest"] {
            client.fetchPhotos(from: rover, onSol: 1) { (photos, error) in
                if let error = error {
                    XCTAssertNil(photos)
                    XCTAssertEqual(error.localizedDescription, "The operation couldn’t be completed. (com.LambdaSchool.Astronomy.ErrorDomain error -1.)")
                    photosExpectation.fulfill()
                }
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testMarsRoverError() {
        let error = NSError(domain: "com.LambdaSchool.Astronomy.ErrorDomain", code: -1, userInfo: nil)
        let mockLoader = MockLoader(data: validRoverJSON, error: error)
        let client = MarsRoverClient(networkLoader: mockLoader)
        let roverExpectation = expectation(description: "Fetch Mars Rover expectation")
        
        client.fetchMarsRover(named: "curiosity") { (marsRover, error) in
            if let error = error {
                XCTAssertNil(marsRover)
                XCTAssertEqual(error.localizedDescription, "The operation couldn’t be completed. (com.LambdaSchool.Astronomy.ErrorDomain error -1.)")
                roverExpectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testPhotosError() {
        let error = NSError(domain: "com.LambdaSchool.Astronomy.ErrorDomain", code: -1, userInfo: nil)
        let mockLoader = MockLoader(data: validSol1JSON, error: error)
        let client = MarsRoverClient(networkLoader: mockLoader)
        let photosExpectation = expectation(description: "Fetch Mars Photos expectation")
        let dictionary = try! MarsRover.jsonDecoder.decode([String : MarsRover].self, from: validRoverJSON)
        
        if let rover = dictionary["photoManifest"] {
            client.fetchPhotos(from: rover, onSol: 1) { (photos, error) in
                if let error = error {
                    XCTAssertNil(photos)
                    XCTAssertEqual(error.localizedDescription, "The operation couldn’t be completed. (com.LambdaSchool.Astronomy.ErrorDomain error -1.)")
                    photosExpectation.fulfill()
                }
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
}
