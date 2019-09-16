//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Bradley Yin on 9/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    func testFetchPhotos() {
        var mockLoader = MockLoader()
        mockLoader.data = validRoverJSON
        let marsRoverClient = MarsRoverClient(loader: mockLoader)
        let didFinishRover = expectation(description: "didFinishRover")
        let didFinishPhoto = expectation(description: "didFinishPhoto")
        marsRoverClient.fetchMarsRover(named: "curiosity") { (rover, error) in
            
            XCTAssertEqual("Curiosity", rover?.name)
            XCTAssertEqual(10, rover?.maxSol)
            guard let rover = rover else { XCTFail(); return}
            
            mockLoader.data = validSol1JSON
            let marsRoverClient2 = MarsRoverClient(loader: mockLoader)
            
            marsRoverClient2.fetchPhotos(from: rover, onSol: 1) { (photos, error) in
                XCTAssertEqual(4477, photos?[0].id)
                didFinishPhoto.fulfill()
            }
            
            didFinishRover.fulfill()
        }
        
        waitForExpectations(timeout: 5)
    }
    
    func testFetchMarsRover() {
        var mockLoader = MockLoader()
        mockLoader.data = validRoverJSON
        let marsRoverClient = MarsRoverClient(loader: mockLoader)
        let didFinish = expectation(description: "didFinish")
        marsRoverClient.fetchMarsRover(named: "curiosity") { (rover, error) in
            XCTAssertEqual("Curiosity", rover?.name)
            XCTAssertEqual(10, rover?.maxSol)
            didFinish.fulfill()
        }
        waitForExpectations(timeout: 5)
        
    }
    
}
