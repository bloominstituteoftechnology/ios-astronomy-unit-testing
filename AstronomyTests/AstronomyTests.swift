//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Cameron Collins on 5/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class AstronomyTests: XCTestCase {

    func testFetchRover() {
        
        //Variables
        var roverInfo: MarsRover?
        let mockDataLoader = MockLoader(data: validRoverJSON, response: nil, error: nil, request: nil, url: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockDataLoader)
        
        //Expectation
        let expectation1 = self.expectation(description: "Wait for Rover")
        
        //Get the Rover
        marsRoverClient.fetchMarsRover(named: "curiosity") { (rover, error) in
            roverInfo = rover
            XCTAssertNotNil(rover)
            XCTAssertNil(error)
            expectation1.fulfill()
        }
    
        wait(for: [expectation1], timeout: 2)
        XCTAssertNotNil(roverInfo)
    }
    
    func testFetchPhoto() {
            
            //Variables
            var roverInfo: MarsRover?
            var photoReferences: [MarsPhotoReference]?
            let mockDataLoader = MockLoader(data: validRoverJSON, response: nil, error: nil, request: nil, url: nil)
            let marsRoverClient = MarsRoverClient(networkLoader: mockDataLoader)
            
            //Expectation
            let expectation1 = self.expectation(description: "Wait for Rover")
            let expectation2 = self.expectation(description: "Wait for Photos")
            
            //Get the Rover
            marsRoverClient.fetchMarsRover(named: "curiosity") { (rover, error) in
                roverInfo = rover
                XCTAssertNotNil(rover)
                XCTAssertNil(error)
                expectation1.fulfill()
            }
        
            wait(for: [expectation1], timeout: 2)
            XCTAssertNotNil(roverInfo)
            print("Got Rover!")
        
            //Fetch Photos
            marsRoverClient.fetchPhotos(from: roverInfo!, onSol: 1) { (photo, error) in
                photoReferences = photo
                XCTAssertNil(error)
                expectation2.fulfill()
            }
            
            wait(for: [expectation2], timeout: 2)
            
            XCTAssertNotNil(photoReferences)
    }

}
