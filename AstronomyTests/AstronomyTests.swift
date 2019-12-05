//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Dillon P on 12/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy


class AstronomyTests: XCTestCase {
    
    func testFetchMarsRover() {
        
        let controller = MarsRoverClient()
        
        let expectation = self.expectation(description: "Waiting for API to return results")
        
        let bundle = Bundle(for: AstronomyTests.self)
        let path = bundle.path(forResource: "roverJSON", ofType: "js")!
        let fileData = try! Data(contentsOf: URL(fileURLWithPath: path))
        
        var mockLoader = MockLoader()
        mockLoader.data = fileData
        
        controller.fetchMarsRover(named: "Curiosity") { (rover, error) in
            
            XCTAssertNotNil(rover)
            XCTAssertNil(error)
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 10, handler: nil)
        
    }
    
    func testFetchPhotos() {
        
        
        
    }
    
}
