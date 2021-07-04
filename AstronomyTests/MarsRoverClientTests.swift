//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Julian A. Fordyce on 3/8/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MockLoader: NetworkDataLoader {
    
    var request: URLRequest?
    var data: Data?
    var error: Error?

    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        self.request = request
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

    func testFetchMarsRover() {
        let mock = MockLoader()
        mock.data = validRoverJSON
        
        let client = MarsRoverClient(networkLoader: mock)
        
        let e = expectation(description: "Wait for results")
        
        client.fetchMarsRover(named: "Curiosity") { (data, error) in
            XCTAssertNotNil(data)
            e.fulfill()
        }
        
        wait(for: [e], timeout: 2)
    }

    func testFetchPhotos() {
        let mock = MockLoader()
        mock.data = validSol1JSON
        
        let client = MarsRoverClient(networkLoader: mock)
        
        let e = expectation(description: "Wait for results")
        let jsonDecoder = MarsPhotoReference.jsonDecoder
        let rover = (try! jsonDecoder.decode([String: MarsRover].self, from: validRoverJSON))["photoManifest"]!
        
        client.fetchPhotos(from: rover, onSol: 1) { (data, error) in
            let photoData = data
            XCTAssertNotNil(photoData)
            e.fulfill()
        }
        
        wait(for: [e], timeout: 2)
        
    }

}
