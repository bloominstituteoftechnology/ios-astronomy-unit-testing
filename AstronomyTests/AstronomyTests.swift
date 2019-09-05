//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Seschwan on 9/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class AstronomyTests: XCTestCase {

    var rover: MarsRover?
    var photos: [MarsPhotoReference]?
    
    func testForSomeResults() {
        let mock = MockDataLoader()
        //let mock = MockDataLoader(data: validRoverJSON, error: nil)
        mock.data = validRoverJSON
        let controller = MarsRoverClient(networkLoader: mock)
        let e = expectation(description: "Wait for results")
        controller.fetchMarsRover(named: "curiosity") { (data, error) in
            e.fulfill()
            self.rover = data
        }
        wait(for: [e], timeout: 3)
        XCTAssertTrue(self.rover!.name == "Curiosity")
        XCTAssertTrue(self.rover!.numberOfPhotos > 1)
    }

}
