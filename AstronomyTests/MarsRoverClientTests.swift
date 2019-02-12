//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Austin Cole on 2/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MockDataLoader: NetworkDataLoader {
    func loadData(from url: URL, completionHandler: @escaping (Data?, Error?) -> Void) {
        completionHandler(self.data, self.error)
    }
    
    func loadData(from request: URLRequest, completionHandler: @escaping (Data?, Error?) -> Void) {
        completionHandler(self.data, self.error)
    }
    
    var request: URLRequest?
    var data: Data?
    var error: Error?
    
}

class MarsRoverClientTests: XCTestCase {
    
    /**
     What shall we test?
     
     - Does decoding work when given good data
     - Does decoding fail when given bad data
     - Does it build the correct URL?
     - Does it build the correct URLRequest?
     - Are the results valid?
     - Is the completion handler called if the networking fails
     - Is the completion handler called if the data is bad
     - Is the completion handler called if the data is good
     
     **/
    
    func testDecodingMarsRoverSuccessWithGoodData() {
        let jsonExpectation = expectation(description: "Wait for JSON results to decode.")
        let mock = MockDataLoader()
        mock.data = validRoverJSON
        let marsRoverclient = MarsRoverClient(dataLoader: mock)
        marsRoverclient.fetchMarsRover(named: "curiosity") { (marsRover, error) in
            jsonExpectation.fulfill()
        }
        self.wait(for: [jsonExpectation], timeout: 2)
        XCTAssertNotNil(marsRoverclient.marsRover)
        XCTAssertTrue(marsRoverclient.marsRover?.name == "Curiosity")
    }
    
    //FIXME: Need to implement this method after getting some test JSON from the NASA API. I was unable to due to the api key in this app not working when I tried to get some JSON in a browser.
    
//    func testDecodingPhotosWithGoodData() {
//        let rover = MarsRover(name: "Curiosity", launchDate: Date.init(), landingDate: Date.init(), status: .active, maxSol: 100, maxDate: Date.init(), numberOfPhotos: 55, solDescriptions: [SolDescription(sol: 1, totalPhotos: 5, cameras: ["camera1"])])
//        let jsonPhotosExpectation = expectation(description: "Wait for JSON photo results to decode.")
//        let mock = MockDataLoader()
//        mock.data =
//        let marsRoverclient = MarsRoverClient(dataLoader: mock)
//
//        marsRoverclient.fetchPhotos(from: rover, onSol: 1, completion: { (marsPhotoReferences, error) in
//            jsonPhotosExpectation.fulfill()
//        })
//        wait(for: [jsonPhotosExpectation], timeout: 5)
//        XCTAssertNotNil(marsRoverclient.marsPhotoReferences)
//    }
    
    func testDecodingMarsRoverFailsWithBadData() {
        
        let jsonExpectation = expectation(description: "Wait for JSON results to decode.")
        let mock = MockDataLoader()
        mock.data = invalidRoverJSON
        let marsRoverclient = MarsRoverClient(dataLoader: mock)
        marsRoverclient.fetchMarsRover(named: "curiosity") { (marsRover, error) in
            jsonExpectation.fulfill()
        }
        self.wait(for: [jsonExpectation], timeout: 2)
        XCTAssertNotNil(marsRoverclient.searchError)
        
    }
    func testDecodingPhotosWithBadData() {

    let rover = MarsRover(name: "Curiosity", launchDate: Date.init(), landingDate: Date.init(), status: .active, maxSol: 100, maxDate: Date.init(), numberOfPhotos: 55, solDescriptions: [SolDescription(sol: 1, totalPhotos: 5, cameras: ["camera1"])])
            let jsonPhotosExpectation = expectation(description: "Wait for JSON photo results to decode.")
            let mock = MockDataLoader()
            mock.data = validRoverJSON
            let marsRoverClient = MarsRoverClient(dataLoader: mock)
    
        marsRoverClient.fetchPhotos(from: rover, onSol: 1, completion: { (marsPhotoReferences, error) in
                jsonPhotosExpectation.fulfill()
            })
            wait(for: [jsonPhotosExpectation], timeout: 5)
        XCTAssertNotNil(marsRoverClient.searchError)
    
    
    }
    
    //For these next two tests I did not use mock data and I also disabled my internet connection
    func testCompletionHandlerCalledIfRoverNetworkingFails() {
        
        let jsonExpectation = expectation(description: "Wait for JSON results to decode.")
        let marsRoverclient = MarsRoverClient()
        marsRoverclient.fetchMarsRover(named: "curiosity") { (marsRover, error) in
            jsonExpectation.fulfill()
        }
        self.wait(for: [jsonExpectation], timeout: 5)
        XCTAssertTrue(marsRoverclient.badNetworkCompletion > 0)
        
    }
    func testCompletionHandlerCalledIfPhotosNetworkingFails() {
        
        let jsonExpectation = expectation(description: "Wait for JSON results to decode.")
        let marsRoverclient = MarsRoverClient()
        marsRoverclient.fetchMarsRover(named: "curiosity") { (marsRover, error) in
            jsonExpectation.fulfill()
        }
        self.wait(for: [jsonExpectation], timeout: 2)
        XCTAssertTrue(marsRoverclient.badNetworkCompletion > 0)
    }
    
    func testCompletionHandlerCalledifTheRoverDataIsGood() {
        
        let jsonExpectation = expectation(description: "Wait for JSON results to decode.")
        let mock = MockDataLoader()
        mock.data = invalidRoverJSON
        let marsRoverclient = MarsRoverClient(dataLoader: mock)
        marsRoverclient.fetchMarsRover(named: "curiosity") { (marsRover, error) in
            jsonExpectation.fulfill()
        }
        self.wait(for: [jsonExpectation], timeout: 2)
        XCTAssertTrue(marsRoverclient.goodDataCompletion > 0)
        
    }
    
    func testCompletionHandlerCalledRoverDataDecodedSuccessfully() {
        
        let jsonExpectation = expectation(description: "Wait for JSON results to decode.")
        let mock = MockDataLoader()
        mock.data = validRoverJSON
        let marsRoverclient = MarsRoverClient(dataLoader: mock)
        marsRoverclient.fetchMarsRover(named: "curiosity") { (marsRover, error) in
            jsonExpectation.fulfill()
        }
        self.wait(for: [jsonExpectation], timeout: 2)
        XCTAssertTrue(marsRoverclient.couldDecodeCompletion > 0)
        
    }
    
    func testCompletionHandlerCalledIfRoverDataNotDecodedSucessfully() {
        
        let jsonExpectation = expectation(description: "Wait for JSON results to decode.")
        let mock = MockDataLoader()
        mock.data = validSol1JSON
        let marsRoverclient = MarsRoverClient(dataLoader: mock)
        marsRoverclient.fetchMarsRover(named: "curiosity") { (marsRover, error) in
            jsonExpectation.fulfill()
        }
        self.wait(for: [jsonExpectation], timeout: 2)
        XCTAssertTrue(marsRoverclient.couldNotDecodeCompletion > 0)
        
    }

}
