//
//  AstronomyTests.swift
//  AstronomyTests
//
//  Created by Nick Nguyen on 3/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy


class MarsRoverClientTests : XCTestCase {

    private(set) var rover: MarsRover?
    private(set) var error: Error?
    
   private func testFetchMarRover() {
        let mockDataLoader = MockLoader(data: validRoverJSON, error: nil)
        
        let controller = MarsRoverClient(networkLoader: mockDataLoader)
        let expectation = self.expectation(description: "Wait for results")
        controller.fetchMarsRover(named: "Curiosity") { (marRover, error) in
            
            self.rover = marRover
            self.error = error
            
            expectation.fulfill()
        }

        wait(for: [expectation], timeout: 5)
        
        XCTAssertNil(error)
        XCTAssertEqual(rover?.name, "Curiosity")
        XCTAssertNotNil(rover)
        
        
    }
    
    lazy private var dateFormatter: DateFormatter = {
        let dm = DateFormatter()
        dm.dateFormat = "yyyy-MM-dd"
        dm.locale = Locale(identifier: "en_US_POSIX")
        return dm
    }()
    private var testLaunchDate: Date {
        return dateFormatter.date(from: "2011-11-26")!
    }
    private var testLandingDate: Date {
        return dateFormatter.date(from: "2012-08-06")!
    }
    
    private var testMaxDate : Date {
        return dateFormatter.date(from: "2012-08-16")!
    }
    
   private func testFetchPhotos() {
        var marPhotos : [MarsPhotoReference] = []
        let testMarsRover = MarsRover(name: "Curiosity",
                                      launchDate: testLaunchDate,
                                      landingDate: testLandingDate,
                                      status: .active,
                                      maxSol: 10,
                                      maxDate: testMaxDate,
                                      numberOfPhotos: 4156,
                                      solDescriptions: [SolDescription(sol: 0, totalPhotos: 3702, cameras: ["MARDI"])])
        
       let mockPhotos = MockLoader(data: validSol1JSON, error: nil)
        
        let controller = MarsRoverClient(networkLoader: mockPhotos)
        let expectation = self.expectation(description: "Wait for results")
        
        controller.fetchPhotos(from: testMarsRover, onSol: 1) { (photos, error) in
            marPhotos = photos!
            XCTAssertNotNil(photos)
            XCTAssertNil(error)
            XCTAssertEqual(marPhotos.count, 16)
            XCTAssertEqual(marPhotos[1].id, 509233)
            expectation.fulfill()
            
        }
       
         wait(for: [expectation], timeout: 5)
    }
    
    
    
    func testNoResultData() {
        let mockDataLoader = MockLoader(data: noResultsData, error: nil)
        
        let controller = MarsRoverClient(networkLoader: mockDataLoader)
        
        let expectation = self.expectation(description: "Wait for results")
        
        controller.fetchMarsRover(named: "asdsadasd") { (mar, error) in
            expectation.fulfill()
             XCTAssertNil(mar)
            XCTAssertNotNil(error)
        }
        
        wait(for: [expectation], timeout: 5)
       
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
 
}
