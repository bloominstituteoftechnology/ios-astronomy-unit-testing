//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Jerry haaser on 11/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class AstronomyTests: XCTestCase {
    
    var roverCheck: MarsRover?

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    func testFetchMarsRover() {
        
        let mock = MockLoader()
        mock.data = validRoverJSON
        
        let controller = MarsRoverClient(networkLoader: mock)
        
        let resultsExpectation = expectation(description: "Wait for results")
        controller.fetchMarsRover(named: "Curiostiy") { (rover, error) in
            if let rover = rover {
                resultsExpectation.fulfill()
                self.roverCheck = rover
            }
            
            if let error = error {
                print(error)
            }
        }
        wait(for: [resultsExpectation], timeout: 2)
        XCTAssertNotNil(roverCheck)
        
    }
    
    func testFetchPhotos() {
        
        let mock = MockLoader()
        mock.data = validRoverJSON
        
        let controller = MarsRoverClient(networkLoader: mock)
        var photo: [MarsPhotoReference]?
        let resultsExpectation = expectation(description: "waitfor results")
        
        guard let rover = roverCheck else { return }
        
        controller.fetchPhotos(from: rover, onSol: 1) { (photoReference, error) in
            if let photos = photoReference {
                resultsExpectation.fulfill()
                photo = photos
            }
            resultsExpectation.fulfill()
        }
        wait(for: [resultsExpectation], timeout: 2)
        
        XCTAssertNotNil(photo)
    }
    
    func testBadFetch() {
        let mock = MockLoader()
               mock.data = 
               
               let controller = MarsRoverClient(networkLoader: mock)
               
               let resultsExpectation = expectation(description: "Wait for results")
               controller.fetchMarsRover(named: "Curiostiy") { (rover, error) in
                   if let rover = rover {
                       resultsExpectation.fulfill()
                       self.roverCheck = rover
                   }
                   
                   if let error = error {
                       print(error)
                   }
               }
               wait(for: [resultsExpectation], timeout: 2)
               XCTAssertNotNil(roverCheck)
    }

}
