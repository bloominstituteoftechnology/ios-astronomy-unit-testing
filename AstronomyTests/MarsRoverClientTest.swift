//
//  MarsRoverClientTest.swift
//  AstronomyTests
//
//  Created by Sergey Osipyan on 2/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

struct MockLoader: NetworkDataLoader {
    
    
//    var request: URLRequest?
//    var url: URL?
    var data: Data?
    var error : Error?
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        
        DispatchQueue.global().async {
            completion(self.data, self.error)
        }
    }
    
    func loadData(with request: URLRequest, complition: @escaping (Data?, Error?) -> Void) {
        
        DispatchQueue.global().async {
            complition(self.data, self.error)
        }
    }
}

class MarsRoverClientTest: XCTestCase {

   
     var result: MarsRover?
     var photoFetchResult : [MarsPhotoReference]?
    
    func testfetchMarsRover() {
        var mock = MockLoader()
        mock.data = validRoverJSON
        let mrc = MarsRoverClient(networkLoader: mock)
        let e = expectation(description: "Wait for results")
        mrc.fetchMarsRover(named: "Curiosity") { (data, error) in
            
            guard let data = data else { fatalError("No data")}
            self.result = data
            e.fulfill()
        }
        wait(for: [e], timeout: 2)
        guard let result = result else { fatalError("No result")}
        XCTAssertEqual(result.name, "Curiosity")
        XCTAssertEqual(result.maxSol, 10)
        XCTAssertEqual(result.numberOfPhotos, 4156)
        
    }
    
    func testfetchPhotos() {
        
        var mock = MockLoader()
        
        
        mock.data = validRoverJSON
        let mrc1 = MarsRoverClient(networkLoader: mock)
        let e1 = expectation(description: "Wait for results")
        mrc1.fetchMarsRover(named: "Curiosity") { (data, error) in
            guard let data = data else { fatalError("No data")}
            self.result = data
            e1.fulfill()
        }
        wait(for: [e1], timeout: 2)
        
        mock.data = validSol1JSON
        
        let mrc = MarsRoverClient(networkLoader: mock)
        let e = expectation(description: "Wait for results")
        guard let result = result else { fatalError("No result")}
        mrc.fetchPhotos(from: result, onSol: 1) { (data, error) in
            self.photoFetchResult = data!
            
            e.fulfill()
        }
        wait(for: [e], timeout: 2)
        XCTAssertEqual(photoFetchResult![1].camera.fullName, "Mast Camera")
        XCTAssertEqual(photoFetchResult![1].camera.id, 22)
        XCTAssertEqual(photoFetchResult![1].sol, 1)
        XCTAssertEqual(photoFetchResult![1].camera.roverId, 5)
    }
}
