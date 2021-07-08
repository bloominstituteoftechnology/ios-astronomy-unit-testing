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

    func testNetworkFetchMarsRover() {
        
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
    
    func testNetworkFetchPhotos() {
        
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
    }
    
    
    func testMockFetchMarsRover() {
        var mock = MockLoader()
        mock.data = validRoverJSON
        
        let marsRoverClient = MarsRoverClient(networkDataLoader: mock)
        let roverExpectation = expectation(description: "Returned Rover")
        
        var roverInfo: MarsRover?
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
            roverInfo = rover
            roverExpectation.fulfill()
        }
        
        wait(for: [roverExpectation], timeout: 2)
        XCTAssertNotNil(roverInfo)
        XCTAssertEqual(roverInfo?.name, "Curiosity")
    }
    
    func testMockFetchPhotos() {
        var mock = MockLoader()
        mock.data = validSol1JSON
        
        let marsRoverClient = MarsRoverClient(networkDataLoader: mock)
        let photoExpectation = expectation(description: "Got photos for sol1!")
        let rover = MarsRover(name: "", launchDate: Date(), landingDate: Date(), status: .complete, maxSol: 1, maxDate: Date(), numberOfPhotos: 1, solDescriptions: [SolDescription(sol: 1, totalPhotos: 1, cameras: [""])])
        var photoRefs: [MarsPhotoReference]?
        marsRoverClient.fetchPhotos(from: rover, onSol: 1) { (photos, error) in
            if let error = error {
                mock.error = error
            }
            photoRefs = photos
            photoExpectation.fulfill()
        }
        
        wait(for: [photoExpectation], timeout: 2)
        XCTAssertNotNil(photoRefs)
        XCTAssertNil(mock.error)
        XCTAssertTrue(photoRefs!.count > 0)
    }

}
