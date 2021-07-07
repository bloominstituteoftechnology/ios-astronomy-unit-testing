//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Nelson Gonzalez on 3/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    var photoFetchResults: [MarsPhotoReference] = []
    //You should at least test fetchMarsRover() and fetchPhotos()
    
    
    func testValidDataAndNoError() {
        let expectations = expectation(description: "Results should not be empty")
       
        let mockLoader = MockLoader(data: validRoverJSON, error: nil)
        //1.
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
       
        //call method we want
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
            XCTAssertTrue(rover!.maxSol>0)
             expectations.fulfill()
        }
        
         waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testFetchPhotosValidDataAndNoErrorMessage() {
       let expectations = expectation(description: "Results should have valid data and no errors")
        
        let mockLoader = MockLoader(data: validSol1JSON, error: nil)
        
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
        
        let decoder = MarsPhotoReference.jsonDecoder
        let rover = (try! decoder.decode([String: MarsRover].self, from: validRoverJSON))["photoManifest"]!
        
        
        marsRoverClient.fetchPhotos(from: rover, onSol: 1) { (photoRef, error) in
            guard let roverPhotos = photoRef else {return}
            XCTAssertTrue(roverPhotos.count > 0)
            XCTAssertTrue(roverPhotos.count == 16)
            expectations.fulfill()
        }
        
        waitForExpectations(timeout: 5)
        
    }
    
    
    
    

}
