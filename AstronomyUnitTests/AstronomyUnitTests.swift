//
//  AstronomyUnitTests.swift
//  AstronomyUnitTests
//
//  Created by Alex Rhodes on 10/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class AstronomyUnitTests: XCTestCase {
    
    var roverCheck: MarsRover?
    
    func testFetchMarsRover() {
        
        let mock = MockDataLoader()
        mock.data = validRoverJSON
        let controller = MarsRoverClient(dataLoader: mock)
        let resultsExpectation = expectation(description: "wait for results")
        
        controller.fetchMarsRover(named: "Curiosity") { (rover, error) in
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
        
        let mock = MockDataLoader()
        mock.data = validRoverJSON
        let controller = MarsRoverClient(dataLoader: mock)
        var photo = [MarsPhotoReference]? = nil
        let resultsExpectation = expectation(description: "wait for results")
        
        guard let rover = roverCheck else {return}
        
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
    
}
