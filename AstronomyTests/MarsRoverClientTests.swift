//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Kenny on 2/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    //=======================
    // MARK: - Properties
    let roverName = "Curiosity"
    
    //=======================
    // MARK: - Helpers
    func createMockController(mockData: Data) -> MarsRoverClient {
        let mock = MockDataLoader(data: mockData, error: nil)
        return MarsRoverClient(networkLoader: mock)
    }
    
    //=======================
    // MARK: - Unit Tests
    func testRoverURL() {
        let roverURL = URL(string: "https://api.nasa.gov/mars-photos/api/v1/manifests/curiosity?api_key=qzGsj0zsKk6CA9JZP1UjAbpQHabBfaPg2M5dGMB7")!
        var baseURL = URL(string: "https://api.nasa.gov/mars-photos/api/v1/manifests")!
        let apiKey = "qzGsj0zsKk6CA9JZP1UjAbpQHabBfaPg2M5dGMB7"
        
        baseURL = baseURL.appendingPathComponent(roverName.lowercased()) //.lowercased() not necessary for URL creation, but necessary for testing
        let urlComponents = NSURLComponents(url: baseURL, resolvingAgainstBaseURL: true)!
        let urlQueryItem = URLQueryItem(name: "api_key", value: apiKey)
        urlComponents.queryItems = [urlQueryItem]
        let url = urlComponents.url
        XCTAssertEqual(url, roverURL)
    }
    
    func testFetchMarsRover() {
        //create mars rover
        let mockController = createMockController(mockData: validRoverJSON)
        let resultsExpectation = expectation(description: "Wait for Mars Rover Results")
        var rover: MarsRover?
        var error: Error?
        mockController.fetchMarsRover(named: roverName) { (roverData, errorData) in
            rover = roverData
            error = errorData
            resultsExpectation.fulfill()
        }
        wait(for: [resultsExpectation], timeout: 2.0)
        
        //test mars rover
        XCTAssertNotNil(rover)
        XCTAssertNil(error)
        XCTAssertEqual(rover?.name, roverName)
    }
    
    func testFetchPhotos() {
        //create mars Rover
        let roverMockController = createMockController(mockData: validRoverJSON)
        var rover: MarsRover?
        let roverExpectation = expectation(description: "Wait for Rover results")
        roverMockController.fetchMarsRover(named: roverName) { (roverData, errorData) in
            rover = roverData
            roverExpectation.fulfill()
        }
        wait(for: [roverExpectation], timeout: 1.1)
        //make sure the rover isn't nil
        XCTAssertNotNil(rover)
        
        //create Photo References from rover
        let sol1MockController = createMockController(mockData: validSol1JSON)
        let photosExpectation = expectation(description: "Wait for Sol1 results")
        var photoReferences: [MarsPhotoReference]?
        var error: Error?
        
        sol1MockController.fetchPhotos(from: rover!, onSol: 1) { (photoReferenceData, errorData) in
            error = errorData
            photoReferences = photoReferenceData
            photosExpectation.fulfill()
        }
        wait(for: [photosExpectation], timeout: 1.1)
        
        //run tests on photoReferences
        XCTAssertNil(error)
        XCTAssertNotNil(photoReferences)
        XCTAssertEqual(photoReferences![0].id, 4477)
        XCTAssertEqual(photoReferences![0].camera.name, "MAST")
    }

}
