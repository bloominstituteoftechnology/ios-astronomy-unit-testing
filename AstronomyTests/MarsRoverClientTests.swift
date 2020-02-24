//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Jorge Alvarez on 2/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

/*

 In your tests, create a MockLoader instance with appropriate data or an error (depending on the test), and pass it into the initializer for MarsRoverClient.
 In the completion closure passed to the client being tested, use assertions to ensure that the parameters passed to the completion closure behave as expected.
 Use expectations to ensure that results from the (asynchronously called) closure passed to MarsRoverClient's fetch methods are reported.

 */

class MarsRoverClientTests: XCTestCase {
    
    private var mock: MockDataLoader {
        return MockDataLoader()
    }
    
    func testFetchMarsRover() {
        let mock = MockDataLoader()
        // change to use self.mock later?
    }
    
    func testFetchPhotos() {
        let mock = MockDataLoader()
    }
}
