//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Lambda_School_Loaner_204 on 12/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest

@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    func testFetchMarsRover() {
        
        let exp = expectation(description: "Fetched Rover!")
        
        let marsRoverClient = MarsRoverClient()
        var roverInfo: MarsRover?
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
            roverInfo = rover
            exp.fulfill()
        }
        
        wait(for: [exp], timeout: 5)
        XCTAssertNotNil(roverInfo, "We got a rover!")
    }
    
    func testFetchPhotos() {
        
        let roverExpectation = expectation(description: "Fetched Rover!")
        
        let marsRoverClient = MarsRoverClient()
        var roverInfo: MarsRover?
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
            roverInfo = rover
            roverExpectation.fulfill()
        }
        
        wait(for: [roverExpectation], timeout: 5)
        XCTAssertNotNil(roverInfo, "We got a rover!")
        
        let photoExpectation = expectation(description: "Fetched Photos for Rover!")
        var photoRefs: [MarsPhotoReference]?
        let solDescription = roverInfo?.solDescriptions[0]
        
        var solNum: Int?
        if let sol = solDescription?.sol {
            solNum = sol
        }
        XCTAssertNotNil(solNum)
        
        marsRoverClient.fetchPhotos(from: roverInfo!, onSol: solNum!) { (photos, error) in
            photoRefs = photos
            photoExpectation.fulfill()
        }
        
        wait(for: [photoExpectation], timeout: 100)
        
        XCTAssertNotNil(photoRefs, "Got the rover photos!")
        //XCTAssertTrue(photoRefs!.count > 0)
    }

}
