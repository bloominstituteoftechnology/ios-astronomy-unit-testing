//
//  MarsRoverClientTests.swift
//  MarsRoverClientTests
//
//  Created by Hunter Oppel on 5/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

/*
 Does decoding work?
 Does decoding fail when given bad data?
 Does it build the correct URL?
 Does it build the correct URLRequest?
 Are the search results saved properly?
 Is the completion handler called when data is good?
 Is the completion handler called when data is bad?
 Is the completion handler called when networking fails?
 */

class MarsRoverClientTests: XCTestCase {
    
    private let fakeRover = MarsRover(name: "Friend",
                                      launchDate: Date(),
                                      landingDate: Date() + 2,
                                      status: .active,
                                      maxSol: 1,
                                      maxDate: Date(),
                                      numberOfPhotos: 16,
                                      solDescriptions: [])
    
    func testForPhotosWithServer() {
        let roverExpectation = expectation(description: "Wait for rover info")
        
        let controller = MarsRoverClient(networkLoader: URLSession(configuration: .ephemeral))
        var roverInfo: MarsRover?
        
        controller.fetchMarsRover(named: "curiosity") { rover, error in
            XCTAssertNil(error)
            
            XCTAssertNotNil(rover)
            NSLog("✅ We got a rover!")
            roverInfo = rover
            roverExpectation.fulfill()
        }
        
        wait(for: [roverExpectation], timeout: 5)
        
        let photosExpectation = expectation(description: "Wait for photos")
        
        controller.fetchPhotos(from: roverInfo!, onSol: 1) { photos, error in
            XCTAssertNil(error)
            
            XCTAssertNotNil(photos)
            NSLog("✅ We got photos!")
            XCTAssertGreaterThan(photos!.count, 0)
            photosExpectation.fulfill()
        }
        
        wait(for: [photosExpectation], timeout: 5)
    }
    
    func testSpeedOfTypicalRequest() {
        measure {
            let roverExpectation = expectation(description: "Wait for rover info")
            
            let controller = MarsRoverClient(networkLoader: URLSession(configuration: .ephemeral))
            var roverInfo: MarsRover?
            
            controller.fetchMarsRover(named: "curiosity") { rover, error in
                NSLog("✅ We got a rover!")
                roverInfo = rover
                roverExpectation.fulfill()
            }
            
            wait(for: [roverExpectation], timeout: 10)
            
            let photosExpectation = expectation(description: "Wait for photos")
            
            controller.fetchPhotos(from: roverInfo!, onSol: 1) { photos, error in
                NSLog("✅ We got photos!")
                photosExpectation.fulfill()
            }
            
            wait(for: [photosExpectation], timeout: 10)
        }
    }
    
    func testValidRoverData() {
        let expectation = self.expectation(description: "Wait for rover info")
        
        let mockDataLoader = MockDataLoader(data: Data.mockData(with: "GoodRoverJSON"), error: nil)
        let controller = MarsRoverClient(networkLoader: mockDataLoader)
        
        controller.fetchMarsRover(named: "curiosity") { rover, error in
            XCTAssertEqual(rover!.name, "Curiosity")
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 10)
    }
    
    func testInvalidRoverData() {
        let expectation = self.expectation(description: "Wait for rover info")
        
        let mockDataLoader = MockDataLoader(data: Data.mockData(with: "BadRoverJSON"), error: nil)
        let controller = MarsRoverClient(networkLoader: mockDataLoader)
        
        controller.fetchMarsRover(named: "curiosity") { rover, error in
            XCTAssertNil(rover)
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 10)
    }
    
    func testValidSolData() {
        let expectation = self.expectation(description: "Wait for photos")
        
        let mockDataLoader = MockDataLoader(data: Data.mockData(with: "GoodSolJSON"), error: nil)
        let controller = MarsRoverClient(networkLoader: mockDataLoader)
        
        controller.fetchPhotos(from: fakeRover, onSol: 1) { photos, error  in
            XCTAssertGreaterThan(photos!.count, 0)
            
            XCTAssertEqual(photos![0].imageURL,
                           URL(string: "http://mars.jpl.nasa.gov/msl-raw-images/msss/00001/mcam/0001ML0000001000I1_DXXX.jpg")!)
            
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 10)
    }
    
    func testInvalidSolData() {
        let expectation = self.expectation(description: "Wait for photos")
        
        let mockDataLoader = MockDataLoader(data: Data.mockData(with: "BadSolJSON"), error: nil)
        let controller = MarsRoverClient(networkLoader: mockDataLoader)
        
        controller.fetchPhotos(from: fakeRover, onSol: 1) { photos, error  in
            XCTAssertNil(photos)
            
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 10)
    }
    
    func testUnavailableNetworkForRover() {
        let expectation = self.expectation(description: "Wait for rover")
        
        let mockDataLoader = MockDataLoader(data: nil, error: NSError(domain: NSURLErrorDomain,
                                                                      code: NSURLErrorCannotConnectToHost,
                                                                      userInfo: nil))
        let controller = MarsRoverClient(networkLoader: mockDataLoader)
        
        controller.fetchMarsRover(named: "curiosity") { rover, error in
            XCTAssertNil(rover)
            
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 10)
    }
    
    func testUnavailableNetworkForPhotos() {
        let expectation = self.expectation(description: "Wait for photos")
        
        let mockDataLoader = MockDataLoader(data: nil, error: NSError(domain: NSURLErrorDomain,
                                                                      code: NSURLErrorCannotConnectToHost,
                                                                      userInfo: nil))
        let controller = MarsRoverClient(networkLoader: mockDataLoader)
        
        controller.fetchPhotos(from: fakeRover, onSol: 1) { photos, error in
            XCTAssertNil(photos)
            
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 10)
    }
    
    func testCorrectURLRequestForRover() {
        let expectation = self.expectation(description: "Wait for rover")
        
        let mockDataLoader = MockDataLoader(data: .mockData(with: "GoodRoverJSON"), error: nil)
        let controller = MarsRoverClient(networkLoader: mockDataLoader)
        
        controller.fetchMarsRover(named: "curiosity") { rover, error in
            XCTAssertEqual(mockDataLoader.url!,URL(string: "https://api.nasa.gov/mars-photos/api/v1/manifests/curiosity?api_key=qzGsj0zsKk6CA9JZP1UjAbpQHabBfaPg2M5dGMB7")!)
            
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 10)
    }
    
    func testCorrectURLRequestForSol() {
        let expectation = self.expectation(description: "Wait for photos")
        
        let mockDataLoader = MockDataLoader(data: .mockData(with: "GoodSolJSON"), error: nil)
        let controller = MarsRoverClient(networkLoader: mockDataLoader)
        
        controller.fetchPhotos(from: fakeRover, onSol: 1) { photos, error in
            XCTAssertEqual(mockDataLoader.url!, URL(string: "https://api.nasa.gov/mars-photos/api/v1/rovers/Friend/photos?sol=1&api_key=qzGsj0zsKk6CA9JZP1UjAbpQHabBfaPg2M5dGMB7")!)
            
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 10)
    }
    
    func testNoDataIsReturned() {
        let expectation = self.expectation(description: "Wait for rover")
        
        let mockDataLoader = MockDataLoader(data: nil, error: nil)
        let controller = MarsRoverClient(networkLoader: mockDataLoader)
        
        controller.fetchMarsRover(named: "curiosity") { rover, error in
            XCTAssertNil(rover)
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 10)
    }
}
