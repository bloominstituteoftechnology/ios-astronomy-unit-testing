//
//  AstronomyNetworkingTests.swift
//  AstronomyTests
//
//  Created by Cody Morley on 6/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    
    func testFetchMarsRover() {
        let mock = MockLoader(data: validRoverJSON, error: nil)
        let client = MarsRoverClient(dataLoader: mock)
        let e = expectation(description: "Wait for results")
        
        client.fetchMarsRover(named: "Curiosity") { rover, error in
            
            XCTAssertNotNil(rover)
            XCTAssertNil(error)
            XCTAssertTrue(rover?.name == "Curiosity")
            e.fulfill()
        }
        
        wait(for: [e], timeout: 3)
    }
    
    func testFetchPhoto() {
        let mock = MockLoader(data: validRoverJSON, error: nil)
        let mock2 = MockLoader(data: validSol1JSON, error: nil)
        let client = MarsRoverClient(dataLoader: mock)
        let client2 = MarsRoverClient(dataLoader: mock2)
        let e = expectation(description: "Wait for results")
        let e2 = expectation(description: "Wait for images.")
        var fetchedRover: MarsRover?
        
        client.fetchMarsRover(named: "Curiosity") { rover, _ in
            fetchedRover = rover
            e.fulfill()
        }
        
        wait(for: [e], timeout: 3)
        guard let testRover = fetchedRover else { XCTFail(); return }
        client2.fetchPhotos(from: testRover, onSol: 1) { references, error in
            guard let references = references else { XCTFail(); return }
            XCTAssertTrue(references.count > 0)
            XCTAssertNil(error)
            e2.fulfill()
        }
        
        wait(for: [e2], timeout: 3)
    }
}
