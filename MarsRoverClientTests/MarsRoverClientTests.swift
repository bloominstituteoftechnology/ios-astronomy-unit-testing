//
//  MarsRoverClientTests.swift
//  MarsRoverClientTests
//
//  Created by Mark Gerrior on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
// I don't think I appreciated this was the module name and not the class name.
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    func testFetchMarsRoverProduction() {
        measure {
            let expectation = self.expectation(description: "Wait for results")
            let client = MarsRoverClient()

            client.fetchMarsRover(named: "curiosity") { (rover, error) in
                expectation.fulfill()
            }
            
            wait(for: [expectation], timeout: 5)
        }
    }
    
    func testFetchPhotosProduction() {
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
            
            guard let rover = roverInfo else { return }
            expectation = self.expectation(description: "Wait for fetchPhotos")

            var photoReferences = [MarsPhotoReference]()
            
            // Next step, load the photos.
            client.fetchPhotos(from: rover, onSol: rover.solDescriptions[7].sol) { (photoRefs, error) in
                photoReferences = photoRefs ?? []
                expectation.fulfill()
            }
            
            wait(for: [expectation], timeout: 5)

            XCTAssertTrue(photoReferences.count > 0, "⚠️ No photos returned from production")
        }
    }

    func testValidRoverData() {
        let expectation = self.expectation(description: "Wait for results")
        let mockDataLoader = MockDataLoader(data: validRoverJSON, error: nil)

        let client = MarsRoverClient(networkLoader: mockDataLoader)

        client.fetchMarsRover(named: "curiosity") { (rover, error) in
            XCTAssertNotNil(rover, "⚠️ Rover object is nil")

            if let rover = rover {
                XCTAssertEqual(rover.solDescriptions[4].sol, 10, "⚠️ Unexpected sol")
            }

            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 5)
    }

    func testInvalidRoverData() {
        let expectation = self.expectation(description: "Wait for results")
        let mockDataLoader = MockDataLoader(data: invalidRoverJSON, error: nil)

        let client = MarsRoverClient(networkLoader: mockDataLoader)

        client.fetchMarsRover(named: "curiosity") { (rover, error) in
            XCTAssertNil(rover, "⚠️ Rover object should have been nil")

            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 5)
    }

}
