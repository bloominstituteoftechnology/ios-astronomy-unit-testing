//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Jocelyn Stuart on 3/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MockDataLoader: NetworkDataLoader {
    
    var request: URLRequest?
    var data: Data?
    var error: Error?
    var url: URL?
    
    func loadData(with request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        self.request = request
        
        print("loadDataRequest")
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
    
    
    func loadData(with url: URL, completion: @escaping (Data?, Error?) -> Void) {
        self.url = url
        
        print("loadDataURL")
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
        
    }
}

class AstronomyTests: XCTestCase {
    
    
        
    
   // class MarsRoverClientTests: XCTestCase {
        
        var rover: MarsRover?
        var photoReference: [MarsPhotoReference]?
        
        func testFetchMarsRover() {
            let mock = MockDataLoader()
            mock.data = validRoverJSON
            let controller = MarsRoverClient.init(networkLoader: mock)
            
            let resultsExpectation = expectation(description: "Wait for search results")
          
            controller.fetchMarsRover(named: "Curiosity") { (rover, error) in
                self.rover = rover
                resultsExpectation.fulfill()
            }
            
           // controller.fe
            
            
            wait(for: [resultsExpectation], timeout: 7.0)
           // print("Rover deets: \(rover)")
            XCTAssertTrue(rover?.name == "Curiosity")
            XCTAssertTrue(rover?.status.rawValue == "active")
            XCTAssertNotNil(rover)
            
            
        }
        
        func testFetchPhotos() {
            let mock = MockDataLoader()
            mock.data = validSol1JSON
    
            let controller = MarsRoverClient.init(networkLoader: mock)
            
            let resultsExpectation = expectation(description: "Wait for search results")
            
            testFetchMarsRover()
            controller.fetchPhotos(from: rover!, onSol: 1) { (marsPhotoReference, error) in
                self.photoReference = marsPhotoReference
                resultsExpectation.fulfill()
            }
            
            
            wait(for: [resultsExpectation], timeout: 7.0)
            XCTAssertTrue((photoReference?.count)! > 0, "Expecting at least 1 result")
            
        }
        
        
        
        // Test no results for a search ( no apps on the store)
        
      /*  func testBadRoverJSON() {
            let mock = MockDataLoader()
            mock.data = invalidRoverJSON
            let controller = MarsRoverClient.init(networkLoader: mock)
            let resultsExpectation = expectation(description: "Wait for search results")
            
            controller.fetchMarsRover(named: "Curiosity") { (rover, error) in
                self.rover = rover
                resultsExpectation.fulfill()
            }
            
            wait(for: [resultsExpectation], timeout: 2.0)
            XCTAssertNotNil(controller.error)
            
            
        }*/
    
}
