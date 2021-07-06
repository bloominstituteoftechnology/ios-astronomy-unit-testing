//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by John Kouris on 12/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    
    struct MockLoader: NetworkDataLoader {
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
    
    func testFetchMarsRover() {
        let loader = MockLoader(data: validRoverJSON)
        let client = MarsRoverClient(loader: loader)
        
        let expectedResult = expectation(description: "Waiting")
        var marsRover: MarsRover?
        client.fetchMarsRover(named: "Curiosity") { (rover, error) in
            expectedResult.fulfill()
            marsRover = rover
        }
        
        wait(for: [expectedResult], timeout: 5)
        XCTAssert(marsRover?.name != nil)
        XCTAssertEqual("Curiosity", marsRover?.name)
        XCTAssert(marsRover?.solDescriptions.count == 5)
    }
    
    func testMarsRoverFetchFailure() {
        let loader = MockLoader(data: inValidRoverJSON)
        let client = MarsRoverClient(loader: loader)
        
        let expectedResult = expectation(description: "Waiting")
        var marsRover: MarsRover?
        client.fetchMarsRover(named: "Curiosity") { (rover, error) in
            expectedResult.fulfill()
            marsRover = rover
        }
        
        wait(for: [expectedResult], timeout: 5)
        XCTAssert(marsRover?.name == nil)
        XCTAssert(marsRover?.solDescriptions.count == nil)
    }
    
    func testFetchingPhotos() {
        let loader = MockLoader(data: validSol1JSON)
        let client = MarsRoverClient(loader: loader)
        
        let expectedResult = expectation(description: "Waiting to load photos")
        
        let rover = MarsRover(name: "rover", launchDate: Date(), landingDate: Date(), status: .active, maxSol: 1, maxDate: Date(), numberOfPhotos: 2, solDescriptions: [])
        client.fetchPhotos(from: rover, onSol: 3) { (photos, _) in
            expectedResult.fulfill()
            XCTAssert(!photos!.isEmpty)
        }
        
        wait(for: [expectedResult], timeout: 5)
    }
    
}
