//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Benjamin Hakes on 2/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy


class MockLoader: NetworkDataLoader {
    
    var data: Data?
    var error: Error?
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
    
}

class MarsRoverClientTests: XCTestCase {

    /**
     - Does FetchMarsRover decoding work when given good data
     - Does FetchPhotos decoding work when given good data
     
     - Does FetchMarsRover decoding fail when given bad data
     - Does FetchPhotos decoding fail when given bad data
     
     - does it build the correct URL for FetchMarsRover
     - does it build the correct URL for FetchPhotos
     
     - Does it build the correct URLRequest for for FetchMarsRover?
     - Does it build the correct URLRequest for for FetchPhotos?
     
     - Are results correctly saved into the property for FetchMarsRover?
     - Are results correctly saved into the property for FetchPhotos?
     
     - Is the completion handler called if the networking fails for FetchMarsRover?
     - Is the completion handler called if the networking fails for FetchPhotos?
     
     - is the completion handler called if the data is bad for FetchMarsRover?
     - is the completion handler called if the data is bad for FetchPhotos?
     
     - is the completion handler called if the data is good for FetchMarsRover?
     - is the completion handler called if the data is good for FetchPhotos?
     
     */
    
    func testForSomeResultsRover() {
        let mock = MockLoader()
        mock.data = validRoverJSON
        
        let mrc = MarsRoverClient(networkLoader: mock)
        
        let e = expectation(description: "Wait for Results")
        mrc.fetchMarsRover(named: "Curiosity") { (rover, error) in
            mrc.rover = rover
            e.fulfill()
        }
        
        wait(for: [e], timeout: 2)
        
        XCTAssertTrue(mrc.rover)
       
    }
    
    func testForSomeResultsPhotos() {
        
    }

    func testDecodingFailsForInvalidDataRover() {
        
    }
    
    func testDecodingFailsForInvalidDataPhotos() {
        
    }
    
    func testForNoResultsRover() {
        
    }
    
    func testForNoResultsPhotos() {
        
    }

    func testBuildCorrectURLForRover() {
        
    }
    
    func testBuildCorrectURLForPhotos() {
        
    }
    
    func testBuildCorrectURLRequestForRover() {
        
    }
    
    func testBuildCorrectURLRequestForPhotos() {
        
    }
    
    func testCompletionForFailedNetworkingForRover() {
        
    }
    
    func testCompletionForFailedNetworkingForPhotos() {
        
    }
    
    
    func testCompletionForBadDataForRover() {
        
    }
    
    func testCompletionForBadDataForPhotos() {
        
    }
    
    func testCompletionForGoodDataForRover() {
        
    }
    
    func testCompletionForGoodDataForPhotos() {
        
    }

}
