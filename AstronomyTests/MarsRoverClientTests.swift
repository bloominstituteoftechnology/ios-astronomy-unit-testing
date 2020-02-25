//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Jorge Alvarez on 2/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

/*

 6. In your tests, create a MockLoader instance with appropriate data or an error (depending on the test), and pass it into the initializer for MarsRoverClient.
 7. In the completion closure passed to the client being tested, use assertions to ensure that the parameters passed to the completion closure behave as expected.
 8. Use expectations to ensure that results from the (asynchronously called) closure passed to MarsRoverClient's fetch methods are reported.

 */

class MarsRoverClientTests: XCTestCase {
    
//    private var mock: MockDataLoader {
//        return MockDataLoader()
//    }
    
    lazy var dateFormatter: DateFormatter = {
        let df = DateFormatter()
        df.dateStyle = .short
        df.timeStyle = .short
        return df
    }()
    
    func testFetchMarsRover() {
        // change to use self.mock later?
        let mock = MockDataLoader()
        mock.data = validRoverJSON

        let controller = MarsRoverClient(networkLoader: mock)
        let resultsExpectation = self.expectation(description: "Wait for results")
        
        controller.fetchMarsRover(named: "Curiosity") { (rover, error) in
            guard let numberOfPhotos = rover?.numberOfPhotos else {return}
            XCTAssertTrue(numberOfPhotos > 0, "Expecting number of photos")
            resultsExpectation.fulfill()
        }
        
        wait(for: [resultsExpectation], timeout: 3)
    }
    
    func testFetchPhotos() {
        // change to use self.mock later?
        let mock = MockDataLoader()
        mock.data = validRoverJSON

        /*
         "rover": {
         "id": 5,
         "name": "Curiosity",
         "landing_date": "2012-08-06",
         "launch_date": "2011-11-26",
         "status": "active",
         "max_sol": 2172,
         "max_date": "2018-09-15",
         "total_photos": 341463,
         "cameras"
         */
        
        /*
         "id": 4477,
              "sol": 1,
              "camera": {
                "id": 22,
                "name": "MAST",
                "rover_id": 5,
                "full_name": "Mast Camera"
              },
         */
        let controller = MarsRoverClient(networkLoader: mock)
        let solTest = SolDescription(sol: 1, totalPhotos: 341463, cameras: ["MAST"])
        let resultsExpectation = expectation(description: "Wait for results")
        let rover = MarsRover(name: "Curiosity", launchDate: Date(), landingDate: Date(), status: .active, maxSol: 2172, maxDate: Date(), numberOfPhotos: 341463, solDescriptions: [solTest])

        controller.fetchPhotos(from: rover, onSol: 1) { (photoRefs, error) in
            guard let photoRefs = photoRefs else {return}
            XCTAssertTrue(photoRefs.count > 0, "Expecting number of photos")
            resultsExpectation.fulfill()
        }
        wait(for: [resultsExpectation], timeout: 3)
    }
}

// Create a MockLoader struct that conforms to the NetworkDataLoader protocol.
class MockDataLoader: NetworkDataLoader {
    
    // Add properties for data and error so that the struct can be initialized with explicitly known data and/or an error.
    var data: Data?
    var error: Error?
    
    // They should call the passed completion closure with the values of object's data and error properties. Make them call the completion closure asynchronously on the global background queue.
    
    /// Uses URLRequest
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        loadData(from: request.url!, completion: completion)
    }
    
    /// Uses URL
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        // Mimics 1 second network call
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.error)
        }
    }
}
