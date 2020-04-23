//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Sal B Amer on 4/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

/* test the following
 
 Does Decoding Work?
 Does Decoding fail when given bad data?
 does it build the correct URL?
 Does it build the corect URLRequest? Get vs Post?
 Are the search results saved properly?
 Is the completion handler called when data is bad?
 Is the completion handler called when networking failed?
 */


class MarsRoverClientTests: XCTestCase {
    
    func testMarsRoverProductionResults() {
              let expectation = self.expectation(description: "Waiting for results")
              let controller = MarsRoverClient()
              controller.fetchMarsRover(named: "curiosity") { (rover, error) in
                  expectation.fulfill()
              }
              wait(for: [expectation], timeout: 30)
      }
    
    func testMarsRoverProductionSpeed() {
        measure {
            let expectation = self.expectation(description: "Waiting for results")
            let controller = MarsRoverClient()
            controller.fetchMarsRover(named: "curiosity") { (rover, error) in
                expectation.fulfill()
            }
            wait(for: [expectation], timeout: 30)
        }
    }
    
    // Test with Mock Data
    
 

}
