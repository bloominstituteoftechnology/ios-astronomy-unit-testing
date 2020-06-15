//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Enzo Jimenez-Soto on 6/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MockDataLoader: NetworkDataLoader {
    
    var data: Data?
    var error: Error?
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
}


class MarsRoverClientTests: XCTestCase {
    
    
    var result: MarsRover?
    var error: Error?
    var photoFetchResults: [MarsPhotoReference] = []
    
    func testMarsRoverFetchOfGoodData() {
        
    }
    
    func testMarsRoverFetchDecodingFailsForBadData() {
        
    }
    
    func testPhotosFetchOfGoodData() {
        
    }
    
    func testPhotosFetchDecodingFailsForBadData() {
        
    }
}
