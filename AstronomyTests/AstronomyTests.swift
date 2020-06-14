//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Kelson Hartle on 6/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest

/*
Does decoding work?
Does decoding fail when given bad data?
Does it build the correct URL?
Does it build the correct URLRequest?
Are the search results saved properly?
Is the completion handler called when the data is good?
Is the completion handler called when the data is bad?
Is the completion handler called when networking fails?
*/

@testable import Astronomy
class AstronomyTests: XCTestCase {
    
    let marsRoverForTest = MarsRover(name: "Curiosity", launchDate: Date(), landingDate: Date() + 2, status: .active, maxSol: 2, maxDate: Date(), numberOfPhotos: 16, solDescriptions: [])
    

    func testMarsRover() {
        
        let client = MarsRoverClient()
        let expectationRover = self.expectation(description: "Wait for results.")
        
        client.fetchMarsRover(named: "curiosity") { (MarsRover, error) in
            print("We recieved the mars rover data!😄")
            expectationRover.fulfill()
        }
        wait(for: [expectationRover], timeout: 5)
        
        
        let photoExpectation = expectation(description: "Wait for the photos")
        
        client.fetchPhotos(from: marsRoverForTest, onSol: 1) { (photos, error) in
            XCTAssertNil(error)
            print("We have photos!")
            XCTAssertGreaterThan(photos!.count, 0)
            photoExpectation.fulfill()
        }
        wait(for: [photoExpectation], timeout: 5)
    }
    
    func testValidRoverData() {
        let mockDataLoader = MockDataLoader(data: validRoverJSON, error: nil)
        let expectation = self.expectation(description: "Wait for results.")

        let client = MarsRoverClient(networkLoader: mockDataLoader)
        
        client.fetchMarsRover(named: "Curiosity") { (MarsRover, error) in

            XCTAssertEqual(MarsRover?.name, "Curiosity")
            
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
    }

    func testInValidRoverData() {
        let mockDataLoader = MockDataLoader(data: inValidRoverJSON, error: nil)
        let expectation = self.expectation(description: "Wait for results.")

        let client = MarsRoverClient(networkLoader: mockDataLoader)
        
        client.fetchMarsRover(named: "Curiosity") { (MarsRover, error) in

            XCTAssertTrue(MarsRover?.name != "Curiosity")
            
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
    }
    
    func testValidSol1Data() {
        let mockDataLoader = MockDataLoader(data: validSol1JSON, error: nil)
        let expectation = self.expectation(description: "Wait for photos.")

        let client = MarsRoverClient(networkLoader: mockDataLoader)
        
        client.fetchPhotos(from: marsRoverForTest, onSol: 1) { (photos, error) in
            guard let photos = photos else { return }

            XCTAssertGreaterThan(photos.count, 0)
            
            XCTAssertEqual(photos[0].imageURL, URL(string: "http://mars.jpl.nasa.gov/msl-raw-images/msss/00001/mcam/0001ML0000001000I1_DXXX.jpg"))
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 15)
    }
    
    func testInValidSol1Data() {
        let mockDataLoader = MockDataLoader(data: inValidSol1JSON, error: nil)
        let expectation = self.expectation(description: "Wait for photos.")

        let client = MarsRoverClient(networkLoader: mockDataLoader)
        
        client.fetchPhotos(from: marsRoverForTest, onSol: 1) { (photos, error) in
            
            guard let photos = photos else { return }
            XCTAssertGreaterThan(photos.count, 0)
            
            XCTAssertTrue(photos[0].imageURL != URL(string: "http://mars.jpl.nasa.gov/msl-raw-images/msss/00001/mcam/0001ML0000001000I1_DXXX.jpg"))
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 15)
    }
    
}
