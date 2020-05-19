//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Shawn James on 5/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class AstronomyTests: XCTestCase {
    // using mock data
    
    func testFetchMarsRover() {
        // mock data loader
        let mockNetworkDataLoader = MockNetworkDataLoader()
        mockNetworkDataLoader.data = validRoverJSON

        // mars rover client + mock data loader
        let marsRoverClient = MarsRoverClient.init(networkDataLoader: mockNetworkDataLoader)
        
        // perform mock fetch and store it in roverInfo var
        var roverInfo: MarsRover?
        
        let fetchExpectation = expectation(description: "Fetching Rover")
        marsRoverClient.fetchMarsRover(named: "curiosity") { (marsRover, error) in
            roverInfo = marsRover
            fetchExpectation.fulfill()
        }
        wait(for: [fetchExpectation], timeout: 2)
        
        // assertations
        XCTAssertNotNil(roverInfo)
        XCTAssertEqual("Curiosity", roverInfo?.name)
    }

    func testfetchPhotos() {
        // first fetch rover
        
        // mock data loader
        let mockNetworkDataLoader = MockNetworkDataLoader()
        mockNetworkDataLoader.data = validRoverJSON

        // mars rover client + mock data loader
        var marsRoverClient = MarsRoverClient.init(networkDataLoader: mockNetworkDataLoader)
        
        // perform mock fetch and store it in roverInfo var
        var roverInfo: MarsRover?
        
        let fetchExpectation = expectation(description: "Fetching Rover")
        marsRoverClient.fetchMarsRover(named: "curiosity") { (marsRover, error) in
            roverInfo = marsRover
            fetchExpectation.fulfill()
        }
        wait(for: [fetchExpectation], timeout: 2)
        
        // assertations
        XCTAssertNotNil(roverInfo)
        XCTAssertEqual("Curiosity", roverInfo?.name)
        
        // now fetch sol
        
        // mock data loader
        mockNetworkDataLoader.data = validSol1JSON

        // mars rover client + mock data loader
        marsRoverClient = MarsRoverClient.init(networkDataLoader: mockNetworkDataLoader)

        // perform mock fetch and store it in marsPhotoReference var
        var photoReferences: [MarsPhotoReference]?

        let photoFetchExpectation = expectation(description: "Fetching Photos")
        marsRoverClient.fetchPhotos(from: roverInfo!, onSol: 1) { (marsPhotoReference, error) in
            photoReferences = marsPhotoReference
            photoFetchExpectation.fulfill()
        }
        wait(for: [photoFetchExpectation], timeout: 2)

        // assertations
        XCTAssertNotNil(photoReferences)
        XCTAssertEqual(16, photoReferences?.count)
    }
    
}
