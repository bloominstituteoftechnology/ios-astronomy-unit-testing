//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Conner on 9/17/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MockDataLoader: NetworkDataLoader {
    init(data: Data?, error: Error?) {
        self.data = data
        self.error = error
    }
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        self.request = request
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        self.url = url
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
    
    let data: Data?
    let error: Error?
    private(set) var request: URLRequest? = nil
    private(set) var url: URL? = nil
}

class MarsRoverClientTests: XCTestCase {
    func testFetchMarsRover() {
        let mock = MockDataLoader(data: validRoverJSON, error: nil)
    }
    
    func testFetchPhotos() {
        
    }
}
