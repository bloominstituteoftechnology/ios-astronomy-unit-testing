//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Isaac Lyons on 11/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    func testFetchMarsRover() {
        let mock = MockLoader()
        mock.data = validRoverJSON
        
        let client = MarsRoverClient(networkLoader: mock)
        
        let resultsExpectation = expectation(description: "Wait for the results")
        client.fetchMarsRover(named: "Curiosity") { (rover, error) in
            XCTAssertNil(error)
            XCTAssertEqual(rover?.name, "Curiosity")
            XCTAssertEqual(rover?.numberOfPhotos, 4156)
            resultsExpectation.fulfill()
        }
        
        wait(for: [resultsExpectation], timeout: 2)
    }
    
    func testFetchPhotos() {
        let mock = MockLoader()
        mock.data = validRoverJSON
        
        let client = MarsRoverClient(networkLoader: mock)
        
        let resultsExpectation = expectation(description: "Wait for the results")
        client.fetchMarsRover(named: "Curiosity") { (rover, error) in
            guard let rover = rover else {
                XCTFail("Rover fetch failed.")
                return
            }
            
            mock.data = validSol1JSON
            let sol1Client = MarsRoverClient(networkLoader: mock)
            sol1Client.fetchPhotos(from: rover, onSol: 1) { (photos, error) in
                XCTAssertNotNil(photos)
                XCTAssertEqual(photos?.count, 16)
                resultsExpectation.fulfill()
            }
        }
        
        
        wait(for: [resultsExpectation], timeout: 2)
    }

}
