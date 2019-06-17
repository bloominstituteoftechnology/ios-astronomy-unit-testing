//
//  MarsRoverClientTests.swift
//  MarsRoverClientTests
//
//  Created by Christopher Aronson on 6/17/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

struct MockLoader: NetworkDataLoader {
    
    let data: Data?
    let error: Error?
    
    init(data: Data? = nil, error: Error? = nil) {
        self.data = data
        self.error = error
    }
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        
        DispatchQueue.global().async {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        completion(data, error)
    }
}

class MarsRoverClientTests: XCTestCase {

    func testFetchMarRoverWithGoodData() {
        
        let mock = MockLoader(data: validRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mock)
        
        let roverExpectation = expectation(description: "Error should be nil and Rover should exsist")
        
        marsRoverClient.fetchMarsRover(named: "curiosity") { (rover, error) in
            XCTAssertNil(error)
            XCTAssertNotNil(rover)
            roverExpectation.fulfill()
        }
        
        waitForExpectations(timeout: 10.0)
        
    }
    
    func testFetchMarsRoverWithBadData() {
        
        let mock = MockLoader(data: invalidRoverJSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mock)
        
        let roverExpectation = expectation(description: "Error should be exsist")
        
        marsRoverClient.fetchMarsRover(named: "curiosity") { (rover, error) in
            
        }
        
        waitForExpectations(timeout: 10.0)
        
    }
    
    func testFetchPhotosWithGoodData() {
        
        let mock = MockLoader(data: validSol1JSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mock)
        
        let photoExpectation = expectation(description: "photo should be exsist and error be nil")
        
        let solDescription = [SolDescription]()
        
        let rover = MarsRover(name: "curiosity",
                              launchDate: Date(),
                              landingDate: Date(),
                              status: .active,
                              maxSol: 1,
                              maxDate: Date(),
                              numberOfPhotos: 1,
                              solDescriptions: solDescription)
        
        marsRoverClient.fetchPhotos(from: rover, onSol: 1) { (photos, error) in
            XCTAssertNil(error)
            XCTAssertNotNil(photos)
            photoExpectation.fulfill()
        }
        
        waitForExpectations(timeout: 10.0)
    }
    
    func testFetchPhotosWithBadData() {
        
        let mock = MockLoader(data: invalidSol1JSON, error: nil)
        let marsRoverClient = MarsRoverClient(networkLoader: mock)
        
        let photoExpectation = expectation(description: "photo should be nil and error should exist")
        
        let solDescription = [SolDescription]()
        
        let rover = MarsRover(name: "curiosity",
                              launchDate: Date(),
                              landingDate: Date(),
                              status: .active,
                              maxSol: 1,
                              maxDate: Date(),
                              numberOfPhotos: 1,
                              solDescriptions: solDescription)
        
        marsRoverClient.fetchPhotos(from: rover, onSol: 1) { (photos, error) in
            XCTAssertNil(photos)
            XCTAssertNotNil(error)
            photoExpectation.fulfill()
        }
        
        waitForExpectations(timeout: 10.0)
    }

}
