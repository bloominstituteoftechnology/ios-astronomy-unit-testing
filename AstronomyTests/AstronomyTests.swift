//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Tobi Kuyoro on 23/03/2020.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class AstronomyTests: XCTestCase {
   
   func testFetchMarsRover() {
      let client = MarsRoverClient()
      let expectation = self.expectation(description: "Wait for results")
      
      client.fetchMarsRover(named: "Curiosity") { (rover, error) in
         expectation.fulfill()
      }
      
      wait(for: [expectation], timeout: 5)
   }
}
