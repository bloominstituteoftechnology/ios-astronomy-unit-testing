//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by TuneUp Shop  on 2/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MockDataLoader: NetworkDataLoader {
    
    var data: Data?
    var error: Error?
    var request: URLRequest?
    var url: URL?
    
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        self.request = request
        DispatchQueue.global().async {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        self.url = url
        DispatchQueue.global().async {
            completion(self.data, self.error)
        }
    }
}

class MarsRoverClientTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func testFetchMarsRover() {
        let mock = MockDataLoader()
        mock.data = validRoverJSON
        let mrc = MarsRoverClient(networkLoader: mock)
        
        let e = expectation(description: "Wait for Rover")
        mrc.fetchMarsRover(named: "Curiosity") { data, error in
            e.fulfill()
            self.testRover = mrc.fetchedRover
            
        }
        
        wait(for: [e], timeout: 4)
        
        XCTAssertNotNil(validRoverJSON)
        XCTAssertNil(mrc.searchError)
        XCTAssertNotNil(mrc.fetchedRover)
        XCTAssertEqual(mrc.fetchedRover?.name, "Curiosity")
    }
    
    
    var testRover: MarsRover?
    var fetchedPhotos: [MarsPhotoReference]?
    func testFetchPhotos() {
        
        let mock = MockDataLoader()
        mock.data = validRoverJSON
        let mrc = MarsRoverClient(networkLoader: mock)
        
        let e = expectation(description: "Wait for Rover")
        mrc.fetchMarsRover(named: "Curiosity") { data, error in
            e.fulfill()
            self.testRover = data
            
            
        }
        
        wait(for: [e], timeout: 4)
        
        let e2 = expectation(description: "Wait for Rover Photos")
        mock.data = validSol1JSON
        mrc.fetchPhotos(from: (testRover)!, onSol: 1) { (photos, error) in
            e2.fulfill()
            mrc.fetchedPhotos = photos
        
        }
        
        wait(for: [e2], timeout: 4)
    
        XCTAssertNotNil(validSol1JSON)
        XCTAssertNotNil(mrc.fetchedPhotos)
        XCTAssertEqual(mrc.fetchedPhotos?.count, 16)
        XCTAssertEqual(mrc.fetchedPhotos?.first?.id, 4477)
    }

}
