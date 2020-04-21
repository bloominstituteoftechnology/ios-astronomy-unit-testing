//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Karen Rodriguez on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    // MARK: - EL ROVERTOOOO
    var elRover: MarsRover? {
        let expectation = self.expectation(description: "ROVERTOOOOO")
        var foundRover: MarsRover?
        MarsRoverClient().fetchMarsRover(named: "curiosity") { rover, error in
            guard let rover = rover else {
                return
            }
            foundRover = rover
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10)
        return foundRover
    }
    
    var laRoverta: MarsRover? {
        let dataExpectation = self.expectation(description: "ROVERTAAAAA")
        var roverta: MarsRover?
        MarsRoverClient(networkLoader: MockLoader(data: validRoverJSON)).fetchMarsRover(named: "testting") { (rover, error) in
            roverta = rover
            dataExpectation.fulfill()
        }
        wait(for: [dataExpectation], timeout: 5)
        return roverta
    }
    
    // MARK: - To the world wide web
    func testFetchRover() {
        let expectation = self.expectation(description: "Wait for results")
        
        let controller = MarsRoverClient()
        var foundRover: MarsRover?
        
        controller.fetchMarsRover(named: "curiosity") { rover, error in
            guard let rover = rover else {
                return
            }
            foundRover = rover
            XCTAssertNotNil(rover)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10)
        XCTAssertNotNil(foundRover)
    }
    
    func testfetchPhotos() {
        let controller = MarsRoverClient()
        let expectation2 = self.expectation(description: "Wait for results")
        controller.fetchPhotos(from: elRover!, onSol: 1) { (photoReference, error) in
            guard let photos = photoReference else { return }
            XCTAssertNotNil(photos)
            expectation2.fulfill()
        }
        wait(for: [expectation2], timeout: 10)
    }
    
    // MARK: - Lol there's nothing here silly program. (Empty Data() and Error() tests)
    func testLoadMockData() {
        let dataExpectation = self.expectation(description: "testy testy")
        let dataLoader = MockLoader(data: Data())
        
        dataLoader.loadData(from: URL(string: "nowherebro.com")!) { (data, error) in
            XCTAssertNotNil(data)
            XCTAssertNil(error)
            dataExpectation.fulfill()
        }
        wait(for: [dataExpectation], timeout: 5)
    }
    
    func testLoadMockError() {
        let errorExpectation = self.expectation(description: "testy testy")
        
        // MARK: - WHY CAN'T I USE Error()?
        let errorLoader = MockLoader(error: NSError(domain: "", code: 1, userInfo: nil) )
        errorLoader.loadData(from: URL(string: "nowherebro.com")!) { (data, error) in
            XCTAssertNotNil(error)
            XCTAssertNil(data)
            errorExpectation.fulfill()
        }
        wait(for: [errorExpectation], timeout: 5)
    }
    
    // MARK: - Valid Test JSON tests.
    func testloadValidRover() {
        let dataExpectation = self.expectation(description: "testy testy")
        let dataLoader = MockLoader(data: validRoverJSON)
        let client = MarsRoverClient(networkLoader: dataLoader)
        
        client.fetchMarsRover(named: "testting") { (rover, error) in
            XCTAssertNotNil(rover)
            XCTAssertNil(error)
            dataExpectation.fulfill()
        }
        wait(for: [dataExpectation], timeout: 5)
    }
    
    func testloadValidPhoto() {
        let photoExpectation = self.expectation(description: "testong testong")
        let imageLoader = MockLoader(data: validSol1JSON)
        let client2 = MarsRoverClient(networkLoader: imageLoader)
        client2.fetchPhotos(from: laRoverta!, onSol: 1) { (photos, error) in
            XCTAssertNotNil(photos)
            XCTAssertNil(error)
            photoExpectation.fulfill()
        }
        wait(for: [photoExpectation], timeout: 5)
        
    }
    
}
