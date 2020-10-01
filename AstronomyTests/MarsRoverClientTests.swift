//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Kenneth Jones on 9/30/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest

@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    
    func testFetchMarsRoverValid() {
        let mock = MockLoader()
        mock.data = validRoverJSON
        
        let controller = MarsRoverClient(dataLoader: mock)
        let resultsExpectation = expectation(description: "Wait for search results")
        
        controller.fetchMarsRover(named: "Curiosity") { (marsRover, error) in
            XCTAssertNil(error)
            XCTAssertNotNil(marsRover)
            XCTAssertEqual(marsRover?.numberOfPhotos, 4156)
            XCTAssertEqual(marsRover?.name, "Curiosity")
            XCTAssertEqual(marsRover?.status, .active)
            resultsExpectation.fulfill()
        }
        
        wait(for: [resultsExpectation], timeout: 2.0)
    }
    
    func testFetchPhotosValid() {
        let mock = MockLoader()
        mock.data = validRoverJSON
        
        var controller = MarsRoverClient(dataLoader: mock)
        let resultsExpectation = expectation(description: "Wait for search results")
        
        var marsRover: MarsRover?
        
        controller.fetchMarsRover(named: "Curiosity") { (mrsRover, error) in
            marsRover = mrsRover
            XCTAssertNil(error)
            XCTAssertNotNil(marsRover)
            XCTAssertEqual(marsRover?.numberOfPhotos, 4156)
            XCTAssertEqual(marsRover?.name, "Curiosity")
            XCTAssertEqual(marsRover?.status, .active)
            
            resultsExpectation.fulfill()
        }
        
        wait(for: [resultsExpectation], timeout: 2.0)
        
        let mock2 = MockLoader()
        mock2.data = validSol1JSON
        
        controller = MarsRoverClient(dataLoader: mock2)
        let resultsExpectation2 = expectation(description: "Wait for search results")
        
        controller.fetchPhotos(from: marsRover!, onSol: 1) { (photoReference, error) in
            XCTAssertNil(error)
            XCTAssertNotNil(photoReference)
            let testRef = photoReference?[15]
            XCTAssertEqual(photoReference?.count, 16)
            XCTAssertEqual(testRef?.id, 49201)
            XCTAssertEqual(testRef?.camera.name, "NAVCAM")
            XCTAssertEqual(testRef?.imageURL.absoluteString, "http://mars.jpl.nasa.gov/msl-raw-images/proj/msl/redops/ods/surface/sol/00001/opgs/edr/ncam/NRA_397586934EDR_F0010008AUT_04096M_.JPG")
            
            resultsExpectation2.fulfill()
        }
        
        wait(for: [resultsExpectation2], timeout: 2.0)
    }
    
    func testFetchMarsRoverInvalid() {
        let mock = MockLoader()
        mock.data = invalidRoverJSON
        
        let controller = MarsRoverClient(dataLoader: mock)
        let resultsExpectation = expectation(description: "Wait for search results")
        
        controller.fetchMarsRover(named: "Curiosity") { (marsRover, error) in
            XCTAssertNotNil(error)
            resultsExpectation.fulfill()
        }
        
        wait(for: [resultsExpectation], timeout: 2.0)
    }
    
    func testFetchPhotosInvalid() {
        let mock = MockLoader()
        mock.data = validRoverJSON
        
        var controller = MarsRoverClient(dataLoader: mock)
        let resultsExpectation = expectation(description: "Wait for search results")
        
        var marsRover: MarsRover?
        
        controller.fetchMarsRover(named: "Curiosity") { (mrsRover, error) in
            marsRover = mrsRover
            XCTAssertNil(error)
            XCTAssertNotNil(marsRover)
            XCTAssertEqual(marsRover?.numberOfPhotos, 4156)
            XCTAssertEqual(marsRover?.name, "Curiosity")
            XCTAssertEqual(marsRover?.status, .active)
            
            resultsExpectation.fulfill()
        }
        
        wait(for: [resultsExpectation], timeout: 2.0)
        
        let mock2 = MockLoader()
        mock2.data = invalidSol1JSON
        
        controller = MarsRoverClient(dataLoader: mock2)
        let resultsExpectation2 = expectation(description: "Wait for search results")
        
        controller.fetchPhotos(from: marsRover!, onSol: 1) { (photoReference, error) in
            XCTAssertNotNil(error)
            
            resultsExpectation2.fulfill()
        }
        
        wait(for: [resultsExpectation2], timeout: 2.0)
    }

}
