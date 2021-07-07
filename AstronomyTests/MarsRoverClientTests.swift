//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Lambda_School_Loaner_259 on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    /*
     
     1. Test that Mars Rover URL is created correctly - Cannot do directly - indirectly done in testFetchMarsRover
     2. Test that Mars Rover URLRequest is created correctly - Cannot do directly - indirectly done in testFetchMarsRover
     3. Test Decoding when JSON received is valid - done in testValidData
     4. Test decoding when JSON received is invalid - done in testInvalidData
     5. Test that Mars Rover data is correctly saved - this is not saved in MarsRoverClient
     6. Test that photo URL is created correctly - Cannot do directly - indrectly done in testFetchPhotos
     7. Test that photo URLRequest is created correctly - Cannot do directly - indrectly done in testFetchPhotos
     8. Test that photo is correctly saved to Cache - cannot do directly in MarsRoverClient
     9. Test decoding when photo JSON data is valid - done in testValidPhotoData
     10. Test decoding when photo JSON data is invalid
     
     */
    
    // mock rover for testing fetchPhotos()
    var rover: MarsRover? {
        let mockRoverData = MockDataLoader(data: validRoverJSON, response: nil, error: nil)
        let client = MarsRoverClient(networkLoader: mockRoverData)
        var marsRover: MarsRover? = nil
        let expectation = self.expectation(description: "Wait for mars rover")
        
        client.fetchMarsRover(named: "curiosity") { (rover, error) in
            marsRover = rover
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 5)
        return marsRover
    }
    
    let newRover = MarsRover(name: "Curiosity", launchDate: Date(), landingDate: Date(), status: .active, maxSol: 10, maxDate: Date(), numberOfPhotos: 4156, solDescriptions: [])
    
    func testFetchMarsRover() {
        let client = MarsRoverClient()
        let expectation = self.expectation(description: "Wait for mars rover.")
        
        client.fetchMarsRover(named: "curiosity") { (rover, error) in
            XCTAssertTrue(rover != nil)
            XCTAssert(rover != nil)
            
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 5)
    }
    
    func testValidData() {
        let mockRoverData = MockDataLoader(data: validRoverJSON, response: nil, error: nil)
        let client = MarsRoverClient(networkLoader: mockRoverData)
        let expectation = self.expectation(description: "Wait for mars rover.")
        var marsRover: MarsRover? = nil
        
        client.fetchMarsRover(named: "curiosity") { (rover, error) in
            marsRover = rover
            
            XCTAssertEqual(marsRover?.name, "Curiosity", "Expected a rover with the name curiosity")
            
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 5)
    }
    
    func testInvalidData() {
        let mockRoverData = MockDataLoader(data: invalidRoverJSON, response: nil, error: nil)
        let client = MarsRoverClient(networkLoader: mockRoverData)
        let expectation = self.expectation(description: "Wait for mars rover.")
        var marsRover: MarsRover? = nil
        
        client.fetchMarsRover(named: "curiosity") { (rover, error) in
            marsRover = rover
            
            XCTAssertTrue(marsRover==nil)
            
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 5)
    }
    
    func testFetchPhotos() {
        let photoClient = MarsRoverClient()
        let expectationPhotos = self.expectation(description: "Wait for photos")

        
//        guard let rover = rover else {
//            XCTFail()
//            return
//        }
        
        photoClient.fetchPhotos(from: newRover, onSol: 1) { (marsPhotos, error) in
            XCTAssertNotNil(marsPhotos)
            expectationPhotos.fulfill()
        }
        
        wait(for: [expectationPhotos], timeout: 5)
    }
    
    func testValidPhotoData() {
        let mockPhotoData = MockDataLoader(data: validSol1JSON, response: nil, error: nil)
        let mockPhotoClient = MarsRoverClient(networkLoader: mockPhotoData)
        let expectationPhotos = self.expectation(description: "Wait for photos")
//        guard let rover = rover else {
//            XCTFail()
//            return
//        }
        
        mockPhotoClient.fetchPhotos(from: newRover, onSol: 1) { (marsPhotos, error) in
            XCTAssertNotNil(marsPhotos)
            expectationPhotos.fulfill()
        }
        
        wait(for: [expectationPhotos], timeout: 5)
    }
    
    func testInvalidPhotoData() {
        let mockPhotoData = MockDataLoader(data: invalidSol1JSON, response: nil, error: nil)
        let mockPhotoClient = MarsRoverClient(networkLoader: mockPhotoData)
        let expectationPhotos = self.expectation(description: "Wait for photos")
//        guard let rover = rover else {
//            XCTFail()
//            return
//        }
        
        mockPhotoClient.fetchPhotos(from: newRover, onSol: 1) { (marsPhotos, error) in
            XCTAssertNil(marsPhotos)
            XCTAssertNotNil(error)
            expectationPhotos.fulfill()
        }
        
        wait(for: [expectationPhotos], timeout: 5)
    }
    
    func testSpeedOfMarsRoverRequest() {
        
        measure {
            let expectation = self.expectation(description: "Wait for mars rover")
            let client = MarsRoverClient()
            
            client.fetchMarsRover(named: "curiosity") { (rover, error) in
                expectation.fulfill()
            }
            
            wait(for: [expectation], timeout: 5)
        }
    }
    
    func testSpeedOfPhotoRequest() {
        
        measureMetrics([.wallClockTime], automaticallyStartMeasuring: false) {
            let expectation = self.expectation(description: "Wait for photos")
            let client = MarsRoverClient(networkLoader: URLSession(configuration: .ephemeral))
            
//            guard let rover = rover else {
//                XCTFail()
//                return
//            }
            
            startMeasuring()
            client.fetchPhotos(from: newRover, onSol: 1) { (roverPhotos, error) in
                self.stopMeasuring()
                expectation.fulfill()
            }
            
            wait(for: [expectation], timeout: 5)
        }
    }
}
