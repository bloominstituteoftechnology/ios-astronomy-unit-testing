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

    func testForValidRoverData() {
        
        // TODO: fix
        let expectation = self.expectation(description: "Wait for results")
        let controller = MarsRoverClient(dataLoader: MockDataLoader(data: validRoverJSON, error: nil))
        controller.fetchMarsRover(named: "Curiosity") { rover, error in
            print("We got back some results!")
            XCTAssertNotNil(rover)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
    }
    
    func testInvalidRoverData() {
        let expectation = self.expectation(description: "Wait for results")
        let controller = MarsRoverClient(dataLoader: MockDataLoader(data: invalidRoverJSON, error: nil))
        controller.fetchMarsRover(named: "Curiosity") { rover, error in
            print("We got back some results!")
            XCTAssertNil(rover)
            XCTAssertNotNil(error)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
    }
    
        func testValidSolData() {
            let expectation = self.expectation(description: "Wait for results")
            let expectation2 = self.expectation(description: "Wait for results")
            let controller = MarsRoverClient(dataLoader: MockDataLoader(data: validRoverJSON, error: nil))
            let controller2 = MarsRoverClient(dataLoader: MockDataLoader(data: validSol1JSON, error: nil))
            var savedRover: MarsRover?
            controller.fetchMarsRover(named: "Curiosity") { rover, error in
                savedRover = rover
                print("We got back some results!")
                expectation.fulfill()
            }
            wait(for: [expectation], timeout: 5)
            
            guard let rover = savedRover else { XCTFail(); return }
            controller2.fetchPhotos(from: rover, onSol: 1) { marsPhotos, error in
                guard let marsPhotos = marsPhotos else { return }
                XCTAssertFalse(marsPhotos.isEmpty)
                expectation2.fulfill()
            }
            wait(for: [expectation2], timeout: 5)
        }
    
        func testInvalidSolData() {
           let expectation = self.expectation(description: "Wait for results")
           let expectation2 = self.expectation(description: "Wait for results")
           let controller = MarsRoverClient(dataLoader: MockDataLoader(data: validRoverJSON, error: nil))
           let controller2 = MarsRoverClient(dataLoader: MockDataLoader(data: invalidSol1JSON, error: nil))
           var savedRover: MarsRover?
           controller.fetchMarsRover(named: "Curiosity") { rover, error in
               savedRover = rover
               print("We got back some results!")
               expectation.fulfill()
           }
           wait(for: [expectation], timeout: 5)
           
           guard let rover = savedRover else { XCTFail(); return }
           controller2.fetchPhotos(from: rover, onSol: 1) { marsPhotos, error in
               XCTAssertNil(marsPhotos)
               expectation2.fulfill()
           }
           wait(for: [expectation2], timeout: 10)
        }
    
    
//    func testSpeedOfTypicalRequest() {
//        measure {
//            let expectation = self.expectation(description: "Wait for results")
//            let controller = MarsRoverClient(dataLoader: URLSession(configuration: .ephemeral))
//
//            controller.fetchPhotos(from: , onSol: 1) {
//                expectation.fulfill()
//            }
//
//            wait(for: [expectation], timeout:  5)
//        }
//    }
//
//    func testSpeedOfTypicalRequestMoreAccurately() {
//        measureMetrics([.wallClockTime], automaticallyStartMeasuring: false) {
//            let expectation = self.expectation(description: "Wait for results")
//            let controller = MarsRoverClient(dataLoader: URLSession(configuration: .ephemeral))
//
//            startMeasuring()
//            controller.fetchPhotos(from: , onSol: 1) {
//                self.stopMeasuring()
//                expectation.fulfill()
//            }
//            wait(for: [expectation], timeout: 5)
//        }
//    }
//
//    func testNoResultsData() {
//        let mockDataLoader = MockDataLoader(data: noResultsData, error: nil)
//
//        let expectation = self.expectation(description: "Wait for results")
//        let controller = MarsRoverClient(dataLoader: mockDataLoader)
//    }
//
//    func testDataWithError() {
//        let expectation = self.expectation(description: "There should be no search results")
//        let error = NSError(domain: "com.lambdaschool.Astronomy", code: -1, userInfo: nil)
//
//        let mockDataLoader = MockDataLoader(data: validRoverJSON, error: error)
//        let controller = MarsRoverClient(dataLoader: mockDataLoader)
//
//        controller.fetchMarsRover(named: "Curiosity") {_,_ in
//            XCTAssertTrue(<#Bool#>)
//            expectation.fulfill()
//        }
//
//        waitForExpectations(timeout: 5)
//    }
//
//    func testNoDataWithError() {
//        let expectation = self.expectation(description: "There should be no search results")
//        let error = NSError(domain: "com.lambdaschool.Astronomy", code: -1, userInfo: nil)
//
//        let mockDataLoader = MockDataLoader(data: nil, error: error)
//        let controller = MarsRoverClient(dataLoader: mockDataLoader)
//
//        controller.fetchMarsRover(named: "Curiosity") {_,_ in
//            XCTAssertTrue(fetchMarsRover.isEmpty)
//            expectation.fulfill()
//        }
//
//        waitForExpectations(timeout: 5)
//    }
}
