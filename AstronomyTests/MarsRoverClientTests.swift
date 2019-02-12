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
    
    init(data: Data? = nil, error: Error? = nil) {
        self.data = data
        self.error = error
    }
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        self.request = request
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        self.url = url
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
    
    var data: Data?
    var error: Error?
    private(set) var request: URLRequest? = nil
    private(set) var url: URL? = nil
    
}



class MarsRoverClientTests: XCTestCase {

    enum TestForError: Error {
        case testError
    }
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
            XCTAssertTrue(mrc.rover != nil)
            XCTAssertTrue(mrc.rover?.name == "Curiosity")
            XCTAssertTrue(mrc.rover?.numberOfPhotos == 4156, "There should be 4156 total photos based on the test data")
            XCTAssertTrue(mrc.rover?.solDescriptions.count == 5, "There should be 5 Sol Descriptions based on the test data")
            e.fulfill()
        }
        
        wait(for: [e], timeout: 2)
       
    }
    
    func testForSomeResultsPhotos() {
        
        let mock = MockLoader()
        mock.data = validSol1JSON
        
        // create test rover
        let solDescriptions = [SolDescription]()
        let rover = MarsRover(name: "Curiosity", launchDate: Date(), landingDate: Date(), status: .active, maxSol: 999, maxDate: Date(), numberOfPhotos: 10000000, solDescriptions: solDescriptions)
        
        let mrc = MarsRoverClient(networkLoader: mock)
        
        let e = self.expectation(description: "Wait for Results")
        mrc.fetchPhotos(from: rover, onSol: 1) { (photos, error) in
            mrc.photos = photos
            XCTAssertTrue(mrc.photos != nil)
            XCTAssertTrue(mrc.photos?.count == 16)
            XCTAssertTrue(mrc.photos?[0].imageURL.absoluteString == "http://mars.jpl.nasa.gov/msl-raw-images/msss/00001/mcam/0001ML0000001000I1_DXXX.jpg")
            e.fulfill()
        }
        
        self.wait(for: [e], timeout: 2)
        
    }

    func testDecodingFailsForInvalidDataRover() {
        let mock = MockLoader()
        mock.data = invalidRoverJSON
        
        let mrc = MarsRoverClient(networkLoader: mock)
        
        let e = expectation(description: "Wait for Results")
        mrc.fetchMarsRover(named: "Curiosity") { (rover, error) in
            mrc.rover = rover
            e.fulfill()
        }
        
        wait(for: [e], timeout: 2)
        
        XCTAssertTrue(mrc.rover == nil)

    }
    
    func testDecodingFailsForInvalidDataPhotos() {
        
        let mock = MockLoader()
        mock.data = invalidSol1JSON
        
        // create test rover
        let solDescriptions = [SolDescription]()
        let rover = MarsRover(name: "Curiosity", launchDate: Date(), landingDate: Date(), status: .active, maxSol: 999, maxDate: Date(), numberOfPhotos: 10000000, solDescriptions: solDescriptions)
        
        let mrc = MarsRoverClient(networkLoader: mock)
        
        let e = self.expectation(description: "Wait for Results")
        mrc.fetchPhotos(from: rover, onSol: 1) { (photos, error) in
            mrc.photos = photos
            XCTAssertTrue(mrc.photos == nil)
            e.fulfill()
        }
        
        self.wait(for: [e], timeout: 2)
        
    }
    
    func testForNoResultsRover() {
     
        let mock = MockLoader()
        mock.data = emptyRoverJSON
        
        let mrc = MarsRoverClient(networkLoader: mock)
        
        let e = expectation(description: "Wait for Results")
        mrc.fetchMarsRover(named: "Curiosity") { (rover, error) in
            mrc.rover = rover
            XCTAssertTrue(mrc.rover == nil, "Empty data produces no search results")
            XCTAssertNil(mrc.roverError)
            e.fulfill()
        }
        
        wait(for: [e], timeout: 2)
        
    }
    
    func testForNoResultsPhotos() {
        
        let mock = MockLoader()
        mock.data = emptySol1JSON
        
        // create test rover
        let solDescriptions = [SolDescription]()
        let rover = MarsRover(name: "Curiosity", launchDate: Date(), landingDate: Date(), status: .active, maxSol: 999, maxDate: Date(), numberOfPhotos: 10000000, solDescriptions: solDescriptions)
        
        let mrc = MarsRoverClient(networkLoader: mock)
        
        let e = self.expectation(description: "Wait for Results")
        mrc.fetchPhotos(from: rover, onSol: 1) { (photos, error) in
            mrc.photos = photos
            XCTAssertTrue(mrc.photos == nil, "Empty data produces no search results")
            XCTAssertNil(mrc.photosError)
            e.fulfill()
        }
        
        self.wait(for: [e], timeout: 2)
    
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
        let mock = MockLoader(data: nil, error: TestForError.testError)
        
        let mrc = MarsRoverClient(networkLoader: mock)
        
        let e = expectation(description: "Wait for Results")
        mrc.fetchMarsRover(named: "Curiosity") { (rover, error) in
            mrc.rover = rover
            XCTAssertNil(mrc.rover)
            XCTAssertNotNil(mrc.roverError)
            e.fulfill()
        }
        
        wait(for: [e], timeout: 2)
    }
    
    func testCompletionForFailedNetworkingForPhotos() {
        
        let mock = MockLoader(data: nil, error: TestForError.testError)
        
        // create test rover
        let solDescriptions = [SolDescription]()
        let rover = MarsRover(name: "Curiosity", launchDate: Date(), landingDate: Date(), status: .active, maxSol: 999, maxDate: Date(), numberOfPhotos: 10000000, solDescriptions: solDescriptions)
        
        let mrc = MarsRoverClient(networkLoader: mock)
        
        let e = self.expectation(description: "Wait for Results")
        mrc.fetchPhotos(from: rover, onSol: 1) { (photos, error) in
            mrc.photos = photos
            XCTAssertNil(mrc.photos)
            XCTAssertNotNil(mrc.photosError)
            e.fulfill()
        }
        
        wait(for: [e], timeout: 2)
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
