//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Bhawnish Kumar on 5/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy
class AstronomyTests: XCTestCase {
    
    
    func testFetchMarsRover() {
        measure {
            let expectation = self.expectation(description: "Waiting for results")
            let roverController = MarsRoverClient()
            
            roverController.fetchMarsRover(named: "curiosity") { (marsrover, error) in
                expectation.fulfill()
            }
            wait(for: [expectation], timeout: 5)
        }
    }
    
    func testFetchPhotos() {
        measure {
            
            var expectation = self.expectation(description: "Wait for fetchMarsRover")
            let client = MarsRoverClient()
            var roverInfo: MarsRover?
            
            // First load the rover for the next step.
            client.fetchMarsRover(named: "curiosity") { (rover, error) in
                roverInfo = rover
                expectation.fulfill()
            }
            
            wait(for: [expectation], timeout: 5)
            
            XCTAssertNotNil(roverInfo, "⚠️ Rover was unable to load from production")
            
            expectation = self.expectation(description: "waiting for photos results")
            let roverController = MarsRoverClient()
            var photoReferences = [MarsPhotoReference]()
            
            
            guard let rover = roverInfo else { return }
            roverController.fetchPhotos(from: rover, onSol: rover.solDescriptions[4].sol) { (photoRefs, error) in
                photoReferences = photoRefs ?? []
                expectation.fulfill()
            }
            wait(for: [expectation], timeout: 5)
            XCTAssertTrue(photoReferences.count > 0, "⚠️ No photos returned from production")
        }
        
    }
    
    
}
