//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Kat Milton on 8/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    func jsonData() -> (rover: MarsRover?, photoReferences: [MarsPhotoReference]?) {
        let decoder = MarsPhotoReference.jsonDecoder
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let roverDictionary = try! decoder.decode([String: MarsRover]?.self, from: validRoverJSON)
        let rover = roverDictionary?["photo_manifest"]
        let decodedPhotoReferences = try! decoder.decode([String: [MarsPhotoReference]]?.self, from: validSol1JSON)
        let photoReferences = decodedPhotoReferences?["photos"]
        return (rover, photoReferences)
    }
    
    func testValidJSONFormat() {
        let mockData = MockDataLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockData)
        let (validRover, _) = jsonData()
        let expectations = expectation(description: "ValidJSONFormat")
        
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
            XCTAssertEqual(validRover?.launchDate, rover?.launchDate)
            expectations.fulfill()
        }
        waitForExpectations(timeout: 3)
    }
    
    func testFetchPhotoData() {
        let expectations = expectation(description: "FetchPhotoData")
        let mockData = MockDataLoader(data: validSol1JSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockData)
        let decoder = MarsPhotoReference.jsonDecoder
        let rover = (try! decoder.decode([String: MarsRover].self, from: validRoverJSON))["photo_manifest"]!
        
        marsRoverClient.fetchPhotos(from: rover, onSol: 1) { (photos, error) in
            guard let roverPhotos = photos else {return}
            XCTAssertNil(error)
            XCTAssert(roverPhotos.count > 0)
            expectations.fulfill()
        }
        waitForExpectations(timeout: 3)
    }
    
    func testFetchMarsRover() {
        let mockData = MockDataLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockData)
        let expectations = expectation(description: "MarsRover.exists")
        
        marsRoverClient.fetchMarsRover(named: "curiosity") { (rover, error) in
            XCTAssertFalse(rover == nil)
            XCTAssert(error == nil)
            expectations.fulfill()
        }
        waitForExpectations(timeout: 3)
    }
    
    func testFetchMarsRoverError() {
        let mockLoader = MockDataLoader(data: validRoverJSON[0...50], error: nil)
        let waitExpectation = expectation(description: "Waiting for load")
        let client = MarsRoverClient(networkLoader: mockLoader)
        
        client.fetchMarsRover(named: "curiosity") { (rover, error) in
            guard let error = error else {
                XCTFail("error")
                return
            }
            waitExpectation.fulfill()
        }
        waitForExpectations(timeout: 8) { (error) in
            if let error = error {
                XCTFail("Error waiting for expectations: \(error)")
            }
        }
    }
    
    func testFetchPhotosError() {
        let mockLoader = MockDataLoader(data: nil, error: nil)
        let waitExpectation = expectation(description: "Waiting for load")
        let (rover, _) = jsonData()
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        
        marsRoverClient.fetchPhotos(from: rover!, onSol: 1) { (photoReferences, error) in
            guard let error = error else {
                XCTFail("error")
                return
            }
            waitExpectation.fulfill()
        }
        waitForExpectations(timeout: 8) { (error) in
            if let error = error {
                XCTFail("Error waiting for expectations: \(error)")
            }
        }
    }
    
}
