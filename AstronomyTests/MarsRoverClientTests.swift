//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Shawn Gee on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    
    // MARK: - Properties
    
    var marsRoverClient: MarsRoverClient!
    
    // MARK: - Setup/Teardown
    
    override func setUp() {
        marsRoverClient = MarsRoverClient()
    }
    
    override func tearDown() {
        marsRoverClient = nil
    }
    
    // MARK: - Tests

    func testFetchMarsRover() {
        
    }
    
    func testFetchBadNameMarsRover() {
        
    }
    
    func testFetchMarsRoverInvalidData() {
        
    }
    
    func testFetchPhotos() {
        
    }
    
    func testFetchPhotosNoResults() {
        
    }
    
    func testFetchPhotosInvalidData() {
        
    }
}
