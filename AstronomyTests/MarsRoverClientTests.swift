//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Ivan Caldwell on 2/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

// In the unit test target, if you haven't already done so, create a test case class called
// MarsRoverClientTests.
class MarsRoverClientTests: XCTestCase {
    /*
     In your tests, create a MockLoader instance with appropriate data or an error (depending on
     the test), and pass it into  the initializer for MarsRoverClient. If you need test JSON, you
     can find it in TestJSON.swift in this repo.
     */
    var error: Error?
    var result: MarsRover?
    var photoFetchResult: [MarsPhotoReference]?
    
    // Add test functions for the things you want to test. You should at least test
    // fetchMarsRover() and fetchPhotos() .
    func testFetchMarsRover() {
        let mock = MockLoader()
        mock.data = validRoverJSON
        let marsRoverClient = MarsRoverClient(dataLoader: mock)
        let expectation = self.expectation(description: "Wait for result")
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (photoManifest, error) in
            XCTAssertEqual(photoManifest?.name, "Curiosity")
            XCTAssertEqual(photoManifest?.numberOfPhotos, 4156)
            XCTAssertEqual(photoManifest?.status, MarsRover.Status(rawValue: "active"))
            XCTAssertEqual(photoManifest?.maxSol, 10)
            
            // I'll work on the date later??? Probably not...
            // XCTAssertNotEqual(rover?.landingDate, "1944-06-06")
            
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 3)
        
    }
    
    /*
     In the completion closure passed to the client being tested, use assertions to ensure that
     the parameters passed to the completion closure behave as expected. Use expectations to
     ensure that results from the (asynchronously called) closure passed to MarsRoverClient's
     fetch methods are reported.
     */
    func testFetchPhotos() {
        let mock = MockLoader()
        mock.data = validSol1JSON
        let marsRoverClient = MarsRoverClient(dataLoader: mock)
        let expectation = self.expectation(description: "This should return photo data")
        let rover = (try! MarsPhotoReference.jsonDecoder.decode([String: MarsRover].self, from: validRoverJSON))["photoManifest"]!
        
        marsRoverClient.fetchPhotos(from: rover, onSol: 1) { (photos, error) in
            XCTAssertEqual(photos?.count, 16)
            XCTAssertEqual(photos![0].id, 4477)
            XCTAssertEqual(photos![0].sol, 1) // Kinda of silly... meh...
            XCTAssertEqual(photos![0].camera.name, "MAST")
            XCTAssertEqual(photos![0].camera.roverId, 5)
            XCTAssertEqual(photos![0].camera.fullName, "Mast Camera")
            XCTAssertNotNil(photos![0].imageURL)
            XCTAssertNotNil(photos![0].earthDate)
            expectation.fulfill()
        }
        waitForExpectations(timeout: 10, handler: nil)
    }
    
    func testFetchPhotosFromBadData() {
        let mock = MockLoader()
        mock.data = invalidRoverJSON
        let marsRoverClient = MarsRoverClient(dataLoader: mock)
        let expectation = self.expectation(description: "Wait for results")
        marsRoverClient.fetchMarsRover(named: "Curiosity") { (data, error) in
            self.result = data
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 2)
        XCTAssertNil(result)
    }
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}

// Create a MockLoader struct that conforms to the NetworkDataLoader protocol.
class MockLoader: NetworkDataLoader {
    
    // Add properties for data and error so that the struct can be initialized with
    // explicitly known data and/or an error.
    var data: Data?
    var error: Error?
    
    /*
     Implement the two loadData() functions. They should call the passed completion closure with the
     values of object's data and error properties. Make them call the completion closure asynchronously
     on the global background queue.
     */
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


