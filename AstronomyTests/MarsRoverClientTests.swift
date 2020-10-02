//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by BrysonSaclausa on 9/30/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    func testFetchMarsRover() {
        let mock = MockDataLoader()
        mock.data = validRoverJSON
        let controller = MarsRoverClient.init(networkLoader: mock)
        
        let resultsExpectation = expectation(description: "Wait for results")
        
        controller.fetchMarsRover(named: "Curiosity") { (marsRover, error) in
            guard let rover = marsRover else {
                XCTFail("error")
                return
            }
            XCTAssertEqual(rover.name, "Curiosity")
            XCTAssertEqual(rover.numberOfPhotos, 4156)
            resultsExpectation.fulfill()
        }
        
        wait(for: [resultsExpectation], timeout: 1)
    
    }
    
    func testFetchPhotos() {
        
    }
    
    func testSomethingElse() {
        
    }
    
    
    
    

}
