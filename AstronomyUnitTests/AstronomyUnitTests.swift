//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Bobby Keffury on 12/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    func testMockFetchRover() {
        let mockLoader = MockLoader()
        let client = MarsRoverClient(networkLoader: mockLoader)
        
        let expectation = self.expectation(description: "Waiting for astronomy API to return valid results.")
        
        let bundle = Bundle(for: MockLoader.self)
        let path = bundle.path(forResource: "TestJSON", ofType: "swift")!
        let fileData = try! Data(contentsOf: URL(fileURLWithPath: path))
        mockLoader.data = fileData
        
        client.fetchMarsRover(named: "Curiosity") { (data, error) in
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
    }
    
    
    func testMockNoRover() {
        let mockLoader = MockLoader()
        let client = MarsRoverClient(networkLoader: mockLoader)
        
        let expectation = self.expectation(description: "Waiting for astronomy API to return valid results.")
        
        mockLoader.data = nil
        
        client.fetchMarsRover(named: "Curiosity") { (data, error) in
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
    }
    
/*
    func testMockFetchPhotos() {
        let mockLoader = MockLoader()
        let client = MarsRoverClient(networkLoader: mockLoader)
        
        let expectation = self.expectation(description: "Waiting for astronomy API to return valid results.")
        let bundle = Bundle(for: MockLoader.self)
        let path = bundle.path(forResource: "TestJSON", ofType: "swift")!
        let fileData = try! Data(contentsOf: URL(fileURLWithPath: path))
        mockLoader.data = fileData
    
        
        client.fetchPhotos(from: MarsRover, onSol: 1) { (data, error) in
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
    }
    
    
    func testMockNoPhotos() {
        let mockLoader = MockLoader()
        let client = MarsRoverClient(networkLoader: mockLoader)
        
        let expectation = self.expectation(description: "Waiting for astronomy API to return valid results.")
        mockLoader.data = nil
        
        client.fetchPhotos(from: MarsRover, onSol: 1) { (data, error) in
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
    }
*/

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


