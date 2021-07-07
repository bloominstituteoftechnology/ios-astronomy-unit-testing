//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Lambda_School_Loaner_34 on 3/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

/*
 What do I want to test?
 - Whether we are getting good data
 - Whether we are getting bad data
 - Whether we are getting a photo
 - Whether we are not getting a photo
 
 */

struct MockDataLoader: NetworkDataLoader {
    var data: Data?
    var response: URLResponse?
    var error: Error?
    
    func loadData(with request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        
        print("loadData")
        DispatchQueue.main.async {
            completion(self.data, self.response, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
}

class MarsRoverClientTests: XCTestCase {
    
    func testFetchMarsRover() {
        
    }
    
    func testFetchPhotos() {
        
    }
}
