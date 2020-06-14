//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Kelson Hartle on 6/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest

/*
Does decoding work?
Does decoding fail when given bad data?
Does it build the correct URL?
Does it build the correct URLRequest?
Are the search results saved properly?
Is the completion handler called when the data is good?
Is the completion handler called when the data is bad?
Is the completion handler called when networking fails?
*/

@testable import Astronomy
class AstronomyTests: XCTestCase {
    
    let marsRoverForTest = MarsRover(name: "curiosity", launchDate: Date(), landingDate: Date() + 2, status: .active, maxSol: 2, maxDate: Date(), numberOfPhotos: 16, solDescriptions: [])
    

    func testMarsRover() {
        
        let client = MarsRoverClient()
        let expectation = self.expectation(description: "Wait for results.")
        
        client.fetchMarsRover(named: "curiosity") { (MarsRover, error) in
            print("We recieved the mars rover data!😄")
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5)
    }
    
    func testFetchPhotos() {
        let client = MarsRoverClient()
        let expectation = self.expectation(description: "Wait for photos.")
        
        client.fetchPhotos(from: marsRoverForTest, onSol: <#T##Int#>, completion: <#T##([MarsPhotoReference]?, Error?) -> Void#>)
        
    }
    
    
    
    
    

}
