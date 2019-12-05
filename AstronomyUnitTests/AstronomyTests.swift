//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Bobby Keffury on 12/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class AstronomyTests: XCTestCase {
    
    

        func testMockFetchRover() {
            
            let client = MarsRoverClient()
            
            let expectation = self.expectation(description: "Waiting for astronomy API to return valid results.")
            
            let bundle = Bundle(for: AstronomyTests.self)
            let path = bundle.path(forResource: "TestRover", ofType: "txt")!
            let fileData = try! Data(contentsOf: URL(fileURLWithPath: path))
            
            let mockLoader = MockLoader()
            mockLoader.data = fileData
            
            client.fetchMarsRover(named: "Curiosity", using: mockLoader) { (data, error) in
                XCTAssert(client.rover != nil)
                expectation.fulfill()
            }
            wait(for: [expectation], timeout: 5)
        }
        
        
        func testMockNoRover() {
            let mockLoader = MockLoader()
            let client = MarsRoverClient()
            
            let expectation = self.expectation(description: "Waiting for astronomy API to return valid results.")
            
            mockLoader.data = nil
            
            client.fetchMarsRover(named: "Curiosity", using: mockLoader) { (data, error) in
                XCTAssert(client.rover == nil)
                expectation.fulfill()
            }
            wait(for: [expectation], timeout: 5)
        }
        
    
        func testMockFetchPhotos() {
            let mockLoader = MockLoader()
            let client = MarsRoverClient()
            var rover: MarsRover?
            
            let expectation = self.expectation(description: "Waiting for astronomy API to return valid results.")
            let bundle = Bundle(for: AstronomyTests.self)
            let path = bundle.path(forResource: "TestPhotos", ofType: "txt")!
            let fileData = try! Data(contentsOf: URL(fileURLWithPath: path))
            mockLoader.data = fileData
        
            client.fetchMarsRover(named: "Curiosity", using: mockLoader) { (data, error) in
                rover = client.rover
            }
            
            client.fetchPhotos(from: rover!, onSol: 1, using: mockLoader) { (data, error) in
                XCTAssert(!client.photos.isEmpty)
                expectation.fulfill()
            }
            
            
            wait(for: [expectation], timeout: 5)
        }
        
        
        func testMockNoPhotos() {
            let mockLoader = MockLoader()
            let client = MarsRoverClient()
            
            let expectation = self.expectation(description: "Waiting for astronomy API to return valid results.")
            mockLoader.data = nil
            
            client.fetchPhotos(from: client.rover!, onSol: 1, using: mockLoader) { (data, error) in
                XCTAssert(client.photos.isEmpty)
                expectation.fulfill()
            }
            wait(for: [expectation], timeout: 5)
        }
    

}

class MockLoader: NetworkDataLoader {
    
    var data: Data?
    var error: Error?
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.global().async {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.global().async {
            completion(self.data, self.error)
        }
    }
    
    
}
