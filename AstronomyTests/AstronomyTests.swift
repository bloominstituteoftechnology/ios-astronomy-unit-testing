//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Stephanie Ballard on 6/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

/*

Does decoding work?
Does decoding fail when given bad data?
Does it build the correct URL?
Does it build the correct URLRequest?
Are the search results saved properly?
Is the completion handler called when data is good?
Is the completion handler called when data is bad?
Is the completion handler called when networking fails?
*/


class AstronomyTests: XCTestCase {

    func testFetchMarsRover() {
        
    }
    
    func testFetchPhotos() {
        
    }

    func testForSomeResults() {
        
        // TODO: fix
//        let expectation = self.expectation(description: "Wait for results")
//        let controller = MarsRoverClient()
//        controller.fetchMarsRover(named: "Mast") {_,_ in
//            print("We got back some results!")
//            XCTAssertGreaterThan(controller., 0)
//            expectation.fulfill()
//        }
//        wait(for: [expectation], timeout: 5)
//        XCTAssertGreaterThan(controller., 0)
    }
    
    func testSpeedOfTypicalRequest() {
//        measure {
//            let expectation = self.expectation(description: "Wait for results")
//            let controller = MarsRoverClient(dataLoader: URLSession(configuration: .ephemeral))
//
//            controller.fetchPhotos(from: "Mast", onSol: 1) {
//                expectation.fulfill()
//            }
//
//            wait(for: [expectation], timeout:  5)
//        }
    }
    
    func testSpeedOfTypicalRequestMoreAccurately() {
//        measureMetrics([.wallClockTime], automaticallyStartMeasuring: false) {
//            let expectation = self.expectation(description: "Wait for results")
//            let controller = MarsRoverClient(dataLoader: URLSession(configuration: .ephemeral))
//
//            startMeasuring()
//            controller.fetchPhotos(from: "Mast", onSol: 1) {
//                self.stopMeasuring()
//                expectation.fulfill()
//            }
//            wait(for: [expectation], timeout: 5)
//        }
    }
    
    func testValidRoverData() {
        let mockDataLoader = MockDataLoader(data: validRoverJSON, error: nil)
        
        let expectation = self.expectation(description: "Wait for results")
        let controller = MarsRoverClient(dataLoader: mockDataLoader)
        
        controller
        
        
    }
    
    func testInvalidRoverData() {
        let mockDataLoader = MockDataLoader(data: invalidRoverJSON, error: nil)
        
        let expectation = self.expectation(description: "Wait for results")
        let controller = MarsRoverClient(dataLoader: mockDataLoader)
        
        controller
    }
    
    func testValidSolData() {
        let mockDataLoader = MockDataLoader(data: validSol1JSON, error: nil)
        
        let expectation = self.expectation(description: "Wait for results")
        let controller = MarsRoverClient(dataLoader: mockDataLoader)
        
        controller
    }
    
    func testInvalidSolData() {
        let mockDataLoader = MockDataLoader(data: invalidSol1JSON, error: nil)
        
        let expectation = self.expectation(description: "Wait for results")
        let controller = MarsRoverClient(dataLoader: mockDataLoader)
        
        controller
    }
    
    func testNoResultsData() {
        let mockDataLoader = MockDataLoader(data: noResultsData, error: nil)
        
        let expectation = self.expectation(description: "Wait for results")
        let controller = MarsRoverClient(dataLoader: mockDataLoader)
    }
}
