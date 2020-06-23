//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Ryan Murphy on 6/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy


class AstronomyTests: XCTestCase {


    
    
    func testValidJSONNoError() {
  
        let mockData = MockLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockData)
        
        let expectations = expectation(description: "ValidJSONNoError")
        
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
            XCTAssert(rover!.maxSol>0)
            expectations.fulfill()
        }
        
        waitForExpectations(timeout: 3, handler: nil)
    }
    
    
  
    func testFetchValidJSONNoError() {
        let expectations = expectation(description: "FetchValidJSONNoError")
        
        let mockData = MockLoader(data: validSol1JSON, error: nil)
        
        let marsRoverClient = MarsRoverClient(networkLoader: mockData)
        
        let decoder = MarsPhotoReference.jsonDecoder
        let rover = (try! decoder.decode([String: MarsRover].self, from: validRoverJSON))["photo_manifest"]!
        
        
        marsRoverClient.fetchPhotos(from: rover, onSol: 1) { (photoRef, error) in
            guard let roverPhotos = photoRef else {return}
            XCTAssert(roverPhotos.count == 16)
            XCTAssert(roverPhotos.count > 0)
            expectations.fulfill()
        }
        
        waitForExpectations(timeout: 3)
        
    }
    
    //I can't figure out what to do with errors ...
//    func testFetchInvalidJSONError() {
//        let expectations = expectation(description: "FetchInvalidJSONError")
//
//        let mockData = MockLoader(data: validSol1JSON, error: nil)
//
//        let marsRoverClient = MarsRoverClient(networkLoader: mockData)
//
//        let decoder = MarsPhotoReference.jsonDecoder
//        let rover = (try! decoder.decode([String: MarsRover].self, from: validRoverJSON))["photo_manifest1"]!
//
//
//        marsRoverClient.fetchPhotos(from: rover, onSol: 1) { (photoRef, error) in
//            guard let roverPhotos = photoRef else {return}
//            XCTAssert(roverPhotos.count == 0)
//            expectations.fulfill()
//        }
//
//        waitForExpectations(timeout: 3)
//
//    }
    
    
    func testFetchMarsRover() {
        let mockData = MockLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockData)
        
        let expectations = expectation(description: "FetchMarsRover.exists")
        
        marsRoverClient.fetchMarsRover(named: "curiosity") { (rover, error) in
            XCTAssertFalse(rover == nil)
            XCTAssert(error == nil)
            expectations.fulfill()
        }
        waitForExpectations(timeout: 3)
    }
    
    
}
