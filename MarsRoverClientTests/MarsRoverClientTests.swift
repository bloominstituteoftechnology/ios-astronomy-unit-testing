//
//  MarsRoverClientTests.swift
//  MarsRoverClientTests
//
//  Created by Chris Gonzales on 3/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    
    func testForRoverResults() {
        let mockDataLoader = MockDataLoader(data: validRoverJSON, error: nil)
        let controller = MarsRoverClient(dataLoader: mockDataLoader)
        
        let expectation = self.expectation(description: "Wait for results")
        
        controller.fetchMarsRover(named: "Curiosity") { (rover, error) in
        XCTAssertNotNil(rover)
        XCTAssertNil(error)
        expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 5)
    }
    
    func testForPhotoResults() {
        let mockDataLoader = MockDataLoader(data: validSol1JSON, error: nil)
        let controller = MarsRoverClient(dataLoader: mockDataLoader)

        do{
            let jsonDecoder = MarsPhotoReference.jsonDecoder
            let rover = (try jsonDecoder.decode([String : MarsRover].self, from: validRoverJSON))["photo_manifest"]!
            let expectation = self.expectation(description: "Wait for results")
            controller.fetchPhotos(from:rover, onSol: 1) { (data, error) in
                XCTAssertNotNil(data)
                XCTAssertNil(error)
                expectation.fulfill()
            }
            wait(for: [expectation], timeout: 5)
        } catch {
            XCTFail()
        }
    }
    
    func testRoverRequestSpeed() {
        measureMetrics([.wallClockTime],
                       automaticallyStartMeasuring: false) {
                        self.startMeasuring()
                        testForRoverResults()
                        self.stopMeasuring()
        }
    }
    
    func testPhotoRequestSpeed(){
        measureMetrics([.wallClockTime],
                       automaticallyStartMeasuring: false) {
                        self.startMeasuring()
                        testForPhotoResults()
                        self.stopMeasuring()
        }
    }
    
    func testValidRoverData() {
        let mockDataLoader = MockDataLoader(data: validRoverJSON, error: nil)
        let controller = MarsRoverClient(dataLoader: mockDataLoader)
        
        let expectation = self.expectation(description: "Wait for results")
        
        controller.fetchMarsRover(named: "Curiosity") { (rover, error) in
            XCTAssertNotNil(rover)
            XCTAssertNil(error)
            expectation.fulfill()
        }
        
        wait(for: [expectation],
             timeout: 5)
        
        
    }
    
    func testInvalidJson() {
        
    }
    
    func testNoResultsData() {
        
    }
    
}
