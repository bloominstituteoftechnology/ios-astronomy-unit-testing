//
//  MarsRoverClientTests.swift
//  AstronomyTests
//
//  Created by Jon Bash on 2019-12-16.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    // MARK: - Setup
    
    var rover: MarsRover!
    
    var roverExpectation: XCTestExpectation!
    var photosExpectation: XCTestExpectation!
    
    override func setUp() {
        roverExpectation = XCTestExpectation(description: "Waiting for mock rover (simulating API request)")
        photosExpectation = XCTestExpectation(description: "Waiting for mock photo data (simulating API request")
    }
    
    // MARK: - Fetch Rover Tests
    
    func testFetchRoverValid() {
        let roverClient = mockClient(withData: MockData.validRoverJSON)
        
        roverClient.fetchMarsRover(named: "curiosity") { result in
            XCTAssertNoThrow(try? result.get())
            let rover = try! result.get()
            XCTAssertNotNil(rover)
            self.roverExpectation.fulfill()
        }
        wait(for: [roverExpectation], timeout: 3)
        
        let dataLoader = roverClient.dataLoader as! MockLoader
        XCTAssertNil(dataLoader.error)
        XCTAssertNotNil(dataLoader.data)
    }
    
    func testFetchRoverInvalidJSON() {
        let roverClient = mockClient(withData: MockData.invalidJSON)
        
        roverClient.fetchMarsRover(named: "curiosity") { result in
            do {
                XCTAssertThrowsError(try result.get())
                let _ = try result.get()
            } catch {
                XCTAssertEqual(error as! NetworkError, NetworkError.noDecode)
            }
            self.roverExpectation.fulfill()
        }
        wait(for: [roverExpectation], timeout: 3)
        
        let dataLoader = roverClient.dataLoader as! MockLoader
        // dataLoader will not catch the error; only when the MarsRoverClient tries to decode it will the error be thrown
        XCTAssertNil(dataLoader.error)
        XCTAssertNotNil(dataLoader.data)
    }
    
    func testFetchRoverBadModel() {
        let roverClient = mockClient(withData: MockData.validJSONBadModel)
        
        roverClient.fetchMarsRover(named: "curiosity") { result in
            do {
                XCTAssertThrowsError(try result.get())
                let _ = try result.get()
            } catch {
                XCTAssertEqual(error as! NetworkError, NetworkError.noDecode)
            }
            self.roverExpectation.fulfill()
        }
        wait(for: [roverExpectation], timeout: 3)
        
        let dataLoader = roverClient.dataLoader as! MockLoader
        // dataLoader will not catch the error; only when the MarsRoverClient tries to decode it will the error be thrown
        XCTAssertNil(dataLoader.error)
        XCTAssertNotNil(dataLoader.data)
    }
    
    func testFetchRoverNoData() {
        let roverClient = mockClient()
        
        roverClient.fetchMarsRover(named: "curiosity") { result in
            do {
                XCTAssertThrowsError(try result.get())
                let _ = try result.get()
            } catch {
                XCTAssertEqual(error as! NetworkError, NetworkError.noData)
            }
            self.roverExpectation.fulfill()
        }
        wait(for: [roverExpectation], timeout: 3)
        
        let dataLoader = roverClient.dataLoader as! MockLoader
        
        XCTAssertNil(dataLoader.data)
        XCTAssertEqual(dataLoader.error as! NetworkError, NetworkError.noData)
    }
    
    // MARK: - Fetch Photos Tests
    
    func testFetchPhotosValid() {
        getRover()
        
        let photoClient = mockClient(withData: MockData.validSol1JSON)
        
        photoClient.fetchPhotos(from: rover, onSol: 1) { result in
            XCTAssertNoThrow(try? result.get())
            let photos = try! result.get()
            XCTAssertNotNil(photos)
            
            self.photosExpectation.fulfill()
        }
        wait(for: [photosExpectation], timeout: 3)
        
        let dataLoader = photoClient.dataLoader as! MockLoader
        XCTAssertNil(dataLoader.error)
        XCTAssertNotNil(dataLoader.data)
    }
    
    func testFetchPhotosInvalidJSON() {
        getRover()
        
        let photoClient = mockClient(withData: MockData.invalidJSON)
        
        photoClient.fetchPhotos(from: rover, onSol: 1) { result in
            do {
                XCTAssertThrowsError(try result.get())
                let _ = try result.get()
            } catch {
                XCTAssertEqual(error as! NetworkError, NetworkError.noDecode)
            }
            self.photosExpectation.fulfill()
        }
        wait(for: [photosExpectation], timeout: 3)
        
        let dataLoader = photoClient.dataLoader as! MockLoader
        // dataLoader will not catch the error; only when the MarsRoverClient tries to decode it will the error be thrown
        XCTAssertNil(dataLoader.error)
        XCTAssertNotNil(dataLoader.data)
    }
    
    func testFetchPhotosBadModel() {
        getRover()
        
        let photoClient = mockClient(withData: MockData.validJSONBadModel)
        
        photoClient.fetchPhotos(from: rover, onSol: 1) { result in
            do {
                XCTAssertThrowsError(try result.get())
                let _ = try result.get()
            } catch {
                XCTAssertEqual(error as! NetworkError, NetworkError.noDecode)
            }
            self.photosExpectation.fulfill()
        }
        wait(for: [photosExpectation], timeout: 3)
        
        let dataLoader = photoClient.dataLoader as! MockLoader
        // dataLoader will not catch the error; only when the MarsRoverClient tries to decode it will the error be thrown
        XCTAssertNil(dataLoader.error)
        XCTAssertNotNil(dataLoader.data)
    }
    
    func testFetchPhotosNoData() {
        getRover()
        let photosClient = mockClient()
        
        photosClient.fetchPhotos(from: rover, onSol: 1) { result in
            do {
                XCTAssertThrowsError(try result.get())
                let _ = try result.get()
            } catch {
                XCTAssertEqual(error as! NetworkError, NetworkError.noData)
            }
            self.photosExpectation.fulfill()
        }
        wait(for: [photosExpectation], timeout: 3)
        
        let dataLoader = photosClient.dataLoader as! MockLoader
        
        XCTAssertNil(dataLoader.data)
        XCTAssertEqual(dataLoader.error as! NetworkError, NetworkError.noData)
    }
    
    // MARK: - Helper Methods
    
    func mockClient(
        withData data: Data? = nil,
        withError error: NetworkError? = nil
    ) -> MarsRoverClient {
        return MarsRoverClient(dataLoader: MockLoader(data: data, error: error))
    }
    
    func getRover() {
        mockClient(withData: MockData.validRoverJSON).fetchMarsRover(
            named: "curiosity")
        { result in
            // no assertions necessary; there's another test for that
            self.rover = try! result.get()
            self.roverExpectation.fulfill()
        }
        wait(for: [roverExpectation], timeout: 3)
    }
}
