//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Wyatt Harrell on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class AstronomyTests: XCTestCase {
    
    func testFetchMarsRover() {
        let expectation = self.expectation(description: "Wait for results")
        let mockLoader = MockLoader(data: validRoverJSON, error: nil)
        let controller = MarsRoverClient(networkLoader: mockLoader)
        
        controller.fetchMarsRover(named: "Curiosity") { (rover, error) in
            
            XCTAssertNil(error)
            XCTAssertNotNil(rover)
            XCTAssertTrue(rover?.name == "Curiosity")
            
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 10)
    }
    
    func testFetchPhotos() {
        let roverExpectation = self.expectation(description: "Wait for rover")
        let mockLoader = MockLoader(data: validSol1JSON, error: nil)
        let controller = MarsRoverClient(networkLoader: mockLoader)
        
        /*
         FETCH A MARS ROVER
        */
        var marsRover: MarsRover?
        
        let mockRoverLoader = MockLoader(data: validRoverJSON, error: nil)
        let controller2 = MarsRoverClient(networkLoader: mockRoverLoader)
        controller2.fetchMarsRover(named: "Curiosity") { (rover, error) in
            
            if let rover = rover {
                marsRover = rover
            }
            
            roverExpectation.fulfill()
        }
        
        wait(for: [roverExpectation], timeout: 10)
        
        /*
         FETCH PHOTOS
        */
        let photoExpectation = self.expectation(description: "Wait for photos")

        controller.fetchPhotos(from: marsRover!, onSol: 1) { (marsPhotoReference, error) in
           
            XCTAssertNil(error)
            XCTAssertNotNil(marsPhotoReference)
            XCTAssertTrue(marsPhotoReference!.count > 0)
            
            photoExpectation.fulfill()
        }
        
        wait(for: [photoExpectation], timeout: 10)
    }
    
    
    
    
}
