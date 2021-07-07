//
//  MarsRoverClientTests.swift
//  MarsRoverClientTests
//
//  Created by Bradley Diroff on 5/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    var marsRover: MarsRover?
    
    // Test Rover
    func testCuriosityExample() {
        let mockDataLoader = MockDataLoader(data: validRoverJSON, response: nil, error: nil)

        let expectation = self.expectation(description: "Need the rover")
        let client = MarsRoverClient(dataLoader: mockDataLoader)
        
        client.fetchMarsRover(named: "curiosity") { (rover, error) in
            
            self.marsRover = rover
            
            XCTAssertEqual((self.marsRover?.name ?? "NO NAME"), "Curiosity", "Expected name Curiosity")
            
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 25)
    }
    
    // Test Image
     
     func testSolData() {
        marsRover = MarsRover(name: "Curiosity", launchDate: Date(), landingDate: Date(), status: .active, maxSol: 10, maxDate: Date(), numberOfPhotos: 4156, solDescriptions: [])
        
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

}
