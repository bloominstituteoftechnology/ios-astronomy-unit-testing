//
//  MarsRoverClientTests.swift
//  MarsRoverClientTests
//
//  Created by Bradley Diroff on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    
    // The rover part
    
    var marsRover: MarsRover?

    func testCuriosityExample() {
        let mockDataLoader = MockDataLoader(data: validRoverJSON, response: nil, error: nil)

        let expectation = self.expectation(description: "Need the rover")
        let client = MarsRoverClient(dataLoader: mockDataLoader)
        
        client.fetchMarsRover(named: "curiosity") { (rover, error) in
            
            self.marsRover = rover
            
            XCTAssertEqual((self.marsRover?.name ?? "NO NAME"), "Curiosity", "Expected name Curiosity")
            
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 35)
        
    // The picture portion
        
        guard let rover = marsRover else {
            XCTAssertEqual((self.marsRover?.name ?? "NO NAME"), "Curiosity", "🥳THERES NO ROVER DATA!!!")
            return
        }
        
         let picMockDataLoader = MockDataLoader(data: validSol1JSON, response: nil, error: nil)

         let picExpectation = self.expectation(description: "Need the sols")
         let picClient = MarsRoverClient(dataLoader: picMockDataLoader)
         
        picClient.fetchPhotos(from: rover, onSol: 1) { (photoRefs, error) in
            
            XCTAssertGreaterThan(photoRefs?.count ?? 0, 0, "Expected to see some photo references")
            
            picExpectation.fulfill()
            
        }
         
         wait(for: [picExpectation], timeout: 35)
        
    }
    
    // Does not work below, so I just combined both tests at once
    
    func testSolData() {
        
        guard let rover = marsRover else {
            XCTAssertEqual((self.marsRover?.name ?? "NO NAME"), "Curiosity", "🥳THERES NO ROVER DATA!!!")
            return
        }
        
         let mockDataLoader = MockDataLoader(data: validSol1JSON, response: nil, error: nil)

         let expectation = self.expectation(description: "Need the sols")
         let client = MarsRoverClient(dataLoader: mockDataLoader)
         
        client.fetchPhotos(from: rover, onSol: 1) { (photoRefs, error) in
            
            XCTAssertGreaterThan(photoRefs?.count ?? 0, 0, "Expected to see some photo references")
            
            expectation.fulfill()
            
        }
         
         wait(for: [expectation], timeout: 35)
     }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
