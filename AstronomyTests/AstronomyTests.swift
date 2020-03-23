//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Ufuk Türközü on 23.03.20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

/*
 Does decoding work?
 Does decoding fail when giving bad data?
 Does it build the correct URL?
 Does it build the correct URLRequest?
 Are the search results saved properly?
 Is the completion handler called when data is good?
 Is the completion handler called when data is bad?
 Is the completion handler called when networking fails?
*/

class MarsRoverClientTests: XCTestCase {
    
    let marsRover = MarsRover(name: "Curiosity", launchDate: Date(), landingDate: Date(), status: .active, maxSol: 10, maxDate: Date(), numberOfPhotos: 4156, solDescriptions: [SolDescription(sol: 1, totalPhotos: 16, cameras: ["MAHLI",
    "MAST",
    "NAVCAM"])])
    
    func testFetchPhotos() {
        let mockDataLoader = MockDataLoader(data: validRoverJSON, response: nil, error: nil)
        let controller = MarsRoverClient(networkLoader: mockDataLoader)
        let expectation = self.expectation(description: "Wait for results")
        
        controller.fetchPhotos(from: marsRover, onSol: 1) { _,_ in
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 5)
        
    }
    
    func testFetchMarsRover() {
        measure {
            let mockDataLoader = MockDataLoader(data: validRoverJSON, response: nil, error: nil)
            let controller = MarsRoverClient(networkLoader: mockDataLoader)
            let expectation = self.expectation(description: "Wait for results")
            
            controller.fetchMarsRover(named: "Curiosity") { (marsRover, error) in
                expectation.fulfill()
            }
            
            wait(for: [expectation], timeout: 5)
        }
    }
    
}
