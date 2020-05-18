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

    //Seems to fail sometimes but it's successful other times. May be due to my internet.
    func testFetchRoverAndPhotos() {
        
        //Variables
        let marsRoverClient = MarsRoverClient()
        var roverInfo: MarsRover?
        var photoReferences: [MarsPhotoReference]?
        
        //Expectation
        let expectation1 = self.expectation(description: "Wait for Rover")
        let expectation2 = self.expectation(description: "Wait for Photos")
        
        //Get the Rover
        marsRoverClient.fetchMarsRover(named: "curiosity") { (rover, error) in
            if let error = error {
                NSLog("Error fetching info for curiosity: \(error)")
                return
            }
            
            roverInfo = rover
            XCTAssertNotNil(rover)
            expectation1.fulfill()
        }
    
        wait(for: [expectation1], timeout: 10)
        XCTAssertNotNil(roverInfo)
        
        
        //Fetch Photos
        marsRoverClient.fetchPhotos(from: roverInfo!, onSol: 1) { (photos, error) in
            
            photoReferences = photos
            expectation2.fulfill()
        }
        
        wait(for: [expectation2], timeout: 10)
        
        XCTAssertNotNil(photoReferences)
    }


}
