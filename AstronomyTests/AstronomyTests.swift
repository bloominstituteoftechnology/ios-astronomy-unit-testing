//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by denis cedeno on 4/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class AstronomyTests: XCTestCase {
    
    func testFetchMarsRover() {
        let mockLoader = MockLoader(data: validRoverJSON)
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        var marsRover: MarsRover?
        
        let expectation = self.expectation(description: "waiting for rover api response")
        
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
            if let error = error {
                NSLog("Error fetching info for curiosity: \(error)")
                return
            }
            expectation.fulfill()
            marsRover = rover
        }
        
        wait(for: [expectation], timeout: 5)
        XCTAssertEqual(marsRover!.name, "Curiosity")
        XCTAssertNotNil(marsRover)
    }
    
    func testFetchPhotos() {
        // get Rover info for fetch photos
        let mockRoverLoader = MockLoader(data: validRoverJSON)
        let marsRoverClient = MarsRoverClient(networkLoader: mockRoverLoader)
        var marsRover: MarsRover?
        let expectation = self.expectation(description: "waiting for rover api response")
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
            expectation.fulfill()
            marsRover = rover
        }
        wait(for: [expectation], timeout: 3)
        XCTAssertEqual(marsRover!.name, "Curiosity")
        
        // fetch photos
        let mockPhotoLoader = MockLoader(data: validSol1JSON!)
        let marsPhotoClient = MarsRoverClient(networkLoader: mockPhotoLoader)
        var photoReferences: [MarsPhotoReference] = []
        
        let photoExpectation = self.expectation(description: "waiting for photo api response")
        
        marsPhotoClient.fetchPhotos(from: marsRover!, onSol: 1) { (images, error) in
            photoExpectation.fulfill()
            photoReferences = images!
        }
        
        wait(for: [photoExpectation], timeout: 5)
        XCTAssertNotNil(photoReferences)
        XCTAssert(photoReferences.count > 0)
        
    }
    
}
