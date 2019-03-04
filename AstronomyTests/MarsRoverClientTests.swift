//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Nelson Gonzalez on 3/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {


    //You should at least test fetchMarsRover() and fetchPhotos()
    
    
    func testValidDataAndNoError() {
        let expectations = expectation(description: "Results should not be empty")
       
        let mockLoader = MockLoader(data: validRoverJSON, error: nil)
        //1.
        let marsRoverClient = MarsRoverClient(networkLoader: mockLoader)
       
        //call method we want to search
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (rover, error) in
            XCTAssertTrue(rover!.maxSol>0)
             expectations.fulfill()
        }
        
         waitForExpectations(timeout: 5, handler: nil)
    
        
        
    }
    
    
    
    

}
