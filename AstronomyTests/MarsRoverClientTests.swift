//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Jesse Ruiz on 11/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    
    func testFetchMarsRover() {
        let mock = MockLoader()
        mock.data = validRoverJSON
        
        var rover: MarsRover? = nil
        let client = MarsRoverClient(networkLoader: mock)
        
        let resultsExpectation = expectation(description: "Waiting for results")
        
        client.fetchMarsRover(named: "Curiosity") { (aRover, error) in
            if let aRover = aRover {
                resultsExpectation.fulfill()
                rover = aRover
            }
        }
        
        wait(for: [resultsExpectation], timeout: 2)
        
        XCTAssertNotNil(rover)
        XCTAssertEqual(rover?.name, "Curiosity")
    }
    
    //    func testFetchPhotos() {
    //        let mock = MockLoader()
    //        mock.data = validRoverJSON
    //
    //        var rover: MarsRover? = nil
    //        let client = MarsRoverClient(networkLoader: mock)
    //        var marsPhotoRefs: [MarsPhotoReference]? = nil
    //
    //        //let roverResultsExpectation = expectation(description: "Waiting for rover")
    //        let photoResultsExpectation = self.expectation(description: "Waiting for photos")
    //
    //        client.fetchMarsRover(named: "Curiosity") { (aRover, error) in
    //
    //            if let aRover = aRover {
    //                //roverResultsExpectation.fulfill()
    //                rover = aRover
    //            }
    //        }
    //
    //        guard let marsRover = rover else { return }
    //
    //        client.fetchPhotos(from: marsRover, onSol: 0) { (marsPhotoReference, error) in
    //            if let photos = marsPhotoReference {
    //                photoResultsExpectation.fulfill()
    //                marsPhotoRefs = photos
    //            }
    //        }
    //        wait(for: [photoResultsExpectation], timeout: 45)
    //
    //        XCTAssertNotNil(marsPhotoRefs)
    //    }
    
    func testFetchingPhotos() {
        let mock = MockLoader()
        mock.data = validSol1JSON
        let client = MarsRoverClient(networkLoader: mock)
        
        let expectation = self.expectation(description: "Photo Fetch Expectation")
        let jsonDecoder = MarsPhotoReference.jsonDecoder
        let rover = (try! jsonDecoder.decode([String : MarsRover].self, from: validRoverJSON))["photo_manifest"]!
        client.fetchPhotos(from: rover, onSol: 1) { (photos, error) in
            defer { expectation.fulfill() }
            XCTAssertNotNil(photos)
            XCTAssertNil(error)
            
            XCTAssertEqual(photos?.count, 16)
            let firstPhoto = photos![0]
            XCTAssertEqual(firstPhoto.sol, 1)
            XCTAssertEqual(firstPhoto.camera.name, "MAST")
            XCTAssertNotNil(firstPhoto.imageURL)
        }
        waitForExpectations(timeout: 10.0, handler: nil)
    }
}
