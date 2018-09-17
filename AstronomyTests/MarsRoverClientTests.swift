//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Lisa Sampson on 9/17/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MockLoader: NetworkDataLoader {
    
    init(data: Data? = nil, error: Error? = nil) {
        self.data = data
        self.error = error
    }
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        self.request = request
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        self.url = url
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
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
        
    }
    
    func testFetchPhotos() {
        
    }
    
}

func urlComponents(_ components1: URLComponents, equalTo components2: URLComponents) -> Bool {
    var scratch1 = components1
    var scratch2 = components2
    
    scratch1.queryItems = []
    scratch2.queryItems = []
    if scratch1 != scratch2 {
        return false
    }
    
    //Compare Query items
    if let queryItems1 = components1.queryItems,
        let queryItems2 = components2.queryItems {
        if Set(queryItems1) != Set(queryItems2) {
            return false
        }
    }
    return true
}
