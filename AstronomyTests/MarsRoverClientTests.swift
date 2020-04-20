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
    var mockRover: MarsRover {
        let jsonDecoder = MarsPhotoReference.jsonDecoder
        let roverDict = try! jsonDecoder.decode([String : MarsRover].self, from: MockJSON.validRoverData)
        return roverDict["photo_manifest"]!
    }
    
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
            XCTAssertNotNil(error)
            exp.fulfill()
        }
        
        wait(for: [exp], timeout: 5)
    }
    
    func testFetchMarsRoverInvalidData() {
        let exp = self.expectation(description: "Wait for data task")
           
           let mockDataTask = MockNetworkSessionDataTask(data: MockJSON.invalidData, response: nil, error: nil, delay: 0.005)
           let mockSession = MockNetworkSession(dataTask: mockDataTask)
           
           marsRoverClient.fetchMarsRover(named: "curiosity", using: mockSession) { (rover, error) in
               XCTAssertNil(rover)
               XCTAssertNotNil(error)
               exp.fulfill()
           }
           
           wait(for: [exp], timeout: 5)
    }
    
    func testFetchPhotos() throws {
        let exp = self.expectation(description: "Wait for data task")
        
        let mockDataTask = MockNetworkSessionDataTask(data: MockJSON.validPhotoData, response: nil, error: nil, delay: 0.005)
        let mockSession = MockNetworkSession(dataTask: mockDataTask)
        
        marsRoverClient.fetchPhotos(from: mockRover, onSol: 63, using: mockSession) { (photoReferences, error) in
            XCTAssertEqual(photoReferences!.count, 4)
            exp.fulfill()
        }
        
        wait(for: [exp], timeout: 5)
    }
    
    func testFetchPhotosNoResults() {
        let exp = self.expectation(description: "Wait for data task")
        
        let mockDataTask = MockNetworkSessionDataTask(data: MockJSON.noPhotoData, response: nil, error: nil, delay: 0.005)
        let mockSession = MockNetworkSession(dataTask: mockDataTask)
        
        marsRoverClient.fetchPhotos(from: mockRover, onSol: 63, using: mockSession) { (photoReferences, error) in
            XCTAssertEqual(photoReferences!.count, 0)
            XCTAssertNil(error)
            exp.fulfill()
        }
        
        wait(for: [exp], timeout: 5)
    }
    
    func testFetchPhotosInvalidData() {
        
    }
}
