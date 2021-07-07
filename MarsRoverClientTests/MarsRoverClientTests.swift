//
//  MarsRoverClientTests.swift
//  MarsRoverClientTests
//
//  Created by Jake Connerly on 10/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    func testFetchingMarsRover() {
        let mock = MockDataLoader()
        mock.data = validRoverJSON
        let client = MarsRoverClient(networkDataLoader: mock)
        var rover: MarsRover? = nil
        let resultsExpectation = expectation(description: "Wait for results")
        
        client.fetchMarsRover(named: "Curiosity") { (marsRover, error) in
            if let marsRover = marsRover {
                resultsExpectation.fulfill()
                rover = marsRover
            }
        }
        wait(for: [resultsExpectation], timeout: 2)
        
        XCTAssertNotNil(rover)
        XCTAssertEqual(rover?.name, "Curiosity")
        XCTAssertEqual(rover?.solDescriptions.count, 4)
    }
    
    func testFetchingPhotos() {
        let mock = MockDataLoader()
        mock.data = validRoverJSON
        let client = MarsRoverClient(networkDataLoader: mock)
        var rover: MarsRover? = nil
        var photoRefs: [MarsPhotoReference]? = nil
        let roverResultExpectation = expectation(description: "Wait for rover")
        let photoResultExpectation = expectation(description: "Wait for photo results")

        client.fetchMarsRover(named: "Curiosity") { (marsRover, error) in
            
            DispatchQueue.main.async {
                guard let rover1 = marsRover else { return }
                rover = rover1
                roverResultExpectation.fulfill()
            }
        }
        
        guard let rover2 = rover else { return }
        
        client.fetchPhotos(from: rover2, onSol: 0) { (marsPhotoReference, error) in
            if let photos = marsPhotoReference {
                photoResultExpectation.fulfill()
                photoRefs = photos
            }
        }
        wait(for: [roverResultExpectation, photoResultExpectation], timeout: 10)
        
        XCTAssertNotNil(photoRefs)
    }
    
    

}
