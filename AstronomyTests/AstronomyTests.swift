//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Thomas Dye on 6/3/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
import XCTest

@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    struct MockLoader: NetworkDataLoader {
        
        var data: Data?
        var error: Error?

        func loadData(from request: URLRequest,
                      completion: @escaping (Data?, Error?) -> Void) {
            
            DispatchQueue.global().async {
                completion(self.data, self.error)
            }
        }

        func loadData(from url: URL,
                      completion: @escaping (Data?, Error?) -> Void) {
            
            DispatchQueue.global().async {
                completion(self.data, self.error)
            }
        }
    }

    func testRoverFetchPassed() {
        
        let mockLoader = MockLoader(data: validRoverJSON)
        let client = MarsRoverClient(loader: mockLoader)
        let expectedResult = expectation(description: "fetching")
        var marsRover: MarsRover?
        
        client.fetchMarsRover(named: "Curiosity") { (rover, error) in
            expectedResult.fulfill()
            marsRover = rover
        }

        wait(for: [expectedResult],
             timeout: 5)
        XCTAssert(marsRover?.name != nil)
        XCTAssertEqual("Curiosity", marsRover?.name)
        XCTAssert((marsRover?.solDescriptions.count)! > 0)
    }

    func testRoverFetchFailed() {
        
        let mockLoader = MockLoader(data: inValidRoverJSON)
        let client = MarsRoverClient(loader: mockLoader)
        let expectedResult = expectation(description: "fetching")
        var marsRover: MarsRover?
        
        client.fetchMarsRover(named: "Curiosity") { (rover, error) in
            expectedResult.fulfill()
            marsRover = rover
        }

        wait(for: [expectedResult],
             timeout: 5)
        XCTAssert(marsRover?.name == nil)
        XCTAssert(marsRover?.solDescriptions.count == nil)
    }

    func testFetchingPhotos() {
        
        let mockLoader = MockLoader(data: validSol1JSON)
        let client = MarsRoverClient(loader: mockLoader)
        let expectedResult = expectation(description: "loading photos")
        let rover = MarsRover(name: "TestRover",
                              launchDate: Date(),
                              landingDate: Date(),
                              status: .active,
                              maxSol: 0,
                              maxDate: Date(),
                              numberOfPhotos: 2,
                              solDescriptions: [])
        
        client.fetchPhotos(from: rover,
                           onSol: 3) { (photos, _) in
                            
                            expectedResult.fulfill()
                            XCTAssert(photos?.isEmpty == false)
        }

        wait(for: [expectedResult], timeout: 5)
    }
}
