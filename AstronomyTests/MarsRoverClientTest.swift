//
//  MarsRoverClientTest.swift
//  AstronomyTests
//
//  Created by macbook on 11/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTest: XCTestCase {
    
    //MARK: Properties
    private let roverClient = MarsRoverClient()
    private let photoCollectionVC = PhotosCollectionViewController()
    private let mock = MockDataLoader()
    private var rover: MarsRover?
    private var error: Error?
    
    
    func testFetchingPhotos() {
        
        let photosExpectation = expectation(description: "Wait for photo results")
        
        mock.data = goodResultsData
        let controller = MarsRoverClient(dataLoader: mock)

        controller.fetchMarsRover(named: "Curiosity") { (rover, error) in
            guard let rover = rover else {
                photosExpectation.fulfill()
                return
            }
//            mock.data = goodResultsData
//            let controller = MarsRoverClient(dataLoader: mock)

        }
        wait(for: [photosExpectation], timeout: 5)
        
    }
    
    func testFetchingRover() {
        
        mock.data = goodResultsData
        let controller = MarsRoverClient(dataLoader: mock)
        let resultsExpectation = expectation(description: "Wait for rover")

        controller.fetchMarsRover(named: "Curiosity") { (rover, error) in
            self.rover = rover
            self.error = error
            resultsExpectation.fulfill()
        }
        
        
        wait(for: [resultsExpectation], timeout: 5)
        
        XCTAssertNil(error)
        XCTAssertNotNil(rover)
        
    }
    
}
