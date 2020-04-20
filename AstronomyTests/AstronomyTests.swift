//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Karen Rodriguez on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    
    func testFetchMethods() {
        let expectation = self.expectation(description: "Wait for results")
        
        let controller = MarsRoverClient()
        var foundRover: MarsRover?
        
        controller.fetchMarsRover(named: "curiosity") { rover, error in
            print("We got back some results!")
            
            guard let rover = rover else {
                return
            }
            
            foundRover = rover
            
            XCTAssertNotNil(rover)
            
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10)
        
        let expectation2 = self.expectation(description: "Wait for results")
        
        controller.fetchPhotos(from: foundRover!, onSol: 1) { (photoReference, error) in
            guard let photos = photoReference else { return }
            
            XCTAssertNotNil(photos)
            expectation2.fulfill()
            
        }
        
        wait(for: [expectation2], timeout: 10)
    }
    
}


class AstronomyTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
