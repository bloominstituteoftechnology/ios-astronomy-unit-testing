//
//  MarsRoverClientTests.swift
//  MarsRoverClientTests
//
//  Created by Ilgar Ilyasov on 10/22/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    func testFetchMarsRover() {
        let theException = self.expectation(description: "Fetching MarsRover")
        
        let mockLoader = MockLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
            if let rover = rover {
                XCTAssertTrue(rover.name == "Curiosity")
                theException.fulfill()
            }
        }
        
        waitForExpectations(timeout: 1, handler: nil)
    }
    
    func testFetchPhotos() {
        let theException = self.expectation(description: "Fetching Photos")
        let mockLoaderForRover = MockLoader(data: validRoverJSON, error: nil)
        let marsRoverClientForRover = MarsRoverClient(networkLoader: mockLoaderForRover)
        
        let mockLoaderForPhotos = MockLoader(data: validSol1JSON, error: nil)
        let marsRoverClientForPhotos = MarsRoverClient(networkLoader: mockLoaderForPhotos)
        
        marsRoverClientForRover.fetchMarsRover(named: "Curiosity") { (rover, error) in
            if let rover = rover {
                marsRoverClientForPhotos.fetchPhotos(from: rover, onSol: 1, completion: { (marsPhotos, error) in
                    if let marsPhotos = marsPhotos {
                        XCTAssertTrue(marsPhotos.count == 16)
                    }
                    theException.fulfill()
                })
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
}
