//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Jon Bash on 2019-12-16.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    // MARK: - Setup
    
    var roverClient: MarsRoverClient!
    var expectation: XCTestExpectation!
    
    override func setUp() {
        expectation = XCTestExpectation(description: "Waiting for mock data (simulating API request)")
    }
    
    func mockRoverClient(withData data: Data) {
        roverClient = MarsRoverClient(dataLoader: MockLoader(data: data))
    }
    
    // MARK: - Tests
    
    func testFetchRoverSuccess() {
        mockRoverClient(withData: MockData.validRoverJSON)
        
        var rover: MarsRover? = nil
        
        roverClient.fetchMarsRover(named: "curiosity") { result in
            XCTAssertNoThrow(try? result.get())
            rover = try! result.get()
            self.expectation.fulfill()
        }
        wait(for: [expectation], timeout: 3)
        
        XCTAssertNotNil(rover)
    }
    
    func testFetchRoverInvalidJSON() {
        mockRoverClient(withData: MockData.invalidJSON)
        
        roverClient.fetchMarsRover(named: "curiosity") { result in
            do {
                XCTAssertThrowsError(try result.get())
                let _ = try result.get()
            } catch {
                XCTAssertEqual(error as! NetworkError, NetworkError.noDecode)
            }
            self.expectation.fulfill()
        }
        wait(for: [expectation], timeout: 3)
    }
    
    
}
