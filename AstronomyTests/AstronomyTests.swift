//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Sal B Amer on 4/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

/* test the following
 
 Does Decoding Work?
 Does Decoding fail when given bad data?
 does it build the correct URL?
 Does it build the corect URLRequest? Get vs Post?
 Are the search results saved properly?
 Is the completion handler called when data is bad?
 Is the completion handler called when networking failed?
 */


class MarsRoverClientTests: XCTestCase {
    
    func testMarsRoverProductionResults() {
              let expectation = self.expectation(description: "Waiting for results")
              let controller = MarsRoverClient()
              controller.fetchMarsRover(named: "curiosity") { (rover, error) in
                  expectation.fulfill()
              }
              wait(for: [expectation], timeout: 30)
      }
    
    func testMarsRoverProductionSpeed() {
        measure {
            let expectation = self.expectation(description: "Waiting for results")
            let controller = MarsRoverClient()
            controller.fetchMarsRover(named: "curiosity") { (rover, error) in
                expectation.fulfill()
            }
            wait(for: [expectation], timeout: 30)
        }
    }
    
    // Test with Mock Data
    
    func testValidJSONData() {
        let mockNetworkDataLoader = MockNetworkDataLoader(data: validRoverJSON, error: nil)
        let controller = MarsRoverClient(networkLoader: mockNetworkDataLoader)
        var roverInformation : MarsRover?
        
        guard let rover = roverInformation else { return }
        let expectation = self.expectation(description: "Wait For results")
        
        // load rover
        controller.fetchMarsRover(named: "curiosity") { (rover, error) in
            roverInformation = rover
            expectation.fulfill()
        }
          wait(for: [expectation], timeout: 30)
        
        XCTAssertNotNil(roverInformation, "Mars rover photo wwas unable to load")
        
        var photoRefrences = [MarsPhotoReference]()
        // load photos
        controller.fetchPhotos(from: rover, onSol: rover.solDescriptions[3].sol) { (photoRef, error) in
            photoRefrences = photoRef ?? []
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 30)
        XCTAssertTrue(photoRefrences.count > 0, "No Photos were returned")
        }
    
    
    func testinValidJSONData() {
    let mockNetworkDataLoader = MockNetworkDataLoader(data: inValidRoverJSON, error: nil)
    let controller = MarsRoverClient(networkLoader: mockNetworkDataLoader)
    var roverInformation : MarsRover?
    
    guard let rover = roverInformation else { return }
    let expectation = self.expectation(description: "Wait For results")
    
    // load rover
    controller.fetchMarsRover(named: "curiosity") { (rover, error) in
        roverInformation = rover
        expectation.fulfill()
    }
      wait(for: [expectation], timeout: 30)
    
    XCTAssertNotNil(roverInformation, "Mars rover photo wwas unable to load")
    
    var photoRefrences = [MarsPhotoReference]()
    // load photos
    controller.fetchPhotos(from: rover, onSol: rover.solDescriptions[3].sol) { (photoRef, error) in
        photoRefrences = photoRef ?? []
        expectation.fulfill()
    }
    wait(for: [expectation], timeout: 30)
    XCTAssertTrue(photoRefrences.count > 0, "No Photos were returned")
    }
    
    }
    
    
    
 // valid and invalid inValidSol1JSON


