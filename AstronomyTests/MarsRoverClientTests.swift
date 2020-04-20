//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Shawn Gee on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    
    // MARK: - Properties
    
    var marsRoverClient: MarsRoverClient!
    
    // MARK: - Setup/Teardown
    
    override func setUp() {
        marsRoverClient = MarsRoverClient()
    }
    
    override func tearDown() {
        marsRoverClient = nil
    }
    
    // MARK: - Tests

    func testFetchMarsRover() {
        let exp = self.expectation(description: "Wait for data task")
        
        let mockDataTask = MockNetworkSessionDataTask(data: MockJSON.validRoverData, response: nil, error: nil, delay: 0.005)
        let mockSession = MockNetworkSession(dataTask: mockDataTask)
        
        marsRoverClient.fetchMarsRover(named: "curiosity", using: mockSession) { (rover, error) in
            XCTAssertEqual(rover!.solDescriptions.count, 3)
            exp.fulfill()
        }
        
        wait(for: [exp], timeout: 5)
    }
    
    func testFetchBadNameMarsRover() {
        let exp = self.expectation(description: "Wait for data task")
        
        let mockDataTask = MockNetworkSessionDataTask(data: MockJSON.badRoverNameData, response: nil, error: nil, delay: 0.005)
        let mockSession = MockNetworkSession(dataTask: mockDataTask)
        
        marsRoverClient.fetchMarsRover(named: "cursity", using: mockSession) { (rover, error) in
            XCTAssertNil(rover)
            exp.fulfill()
        }
        
        wait(for: [exp], timeout: 5)
    }
    
    func testFetchMarsRoverInvalidData() {
        
    }
    
    func testFetchPhotos() {
        
    }
    
    func testFetchPhotosNoResults() {
        
    }
    
    func testFetchPhotosInvalidData() {
        
    }
}
