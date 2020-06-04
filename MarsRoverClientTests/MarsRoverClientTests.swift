//
//  MarsRoverClientTests.swift
//  MarsRoverClientTests
//
//  Created by Elizabeth Thomas on 6/3/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {

    // Class succeeds, but there is no button to individually run tests
    func fetchMarsRover() {
        
        let marsRoverClient = MarsRoverClient()
        
        let expectation = self.expectation(description: "Waiting for MarsRover API")
        
        let validRoverJSON = """
        {
            "photo_manifest": {
                "name": "Curiosity",
                "landing_date": "2012-08-06",
                "launch_date": "2011-11-26",
                "status": "active",
                "max_sol": 10,
                "max_date": "2012-08-16",
                "total_photos": 4156,
                "photos": [{
                        "sol": 0,
                        "earth_date": "2012-08-06",
                        "total_photos": 3702,
                        "cameras": [
                            "CHEMCAM",
                            "FHAZ",
                            "MARDI",
                            "RHAZ"
                        ]
                    },
                    {
                        "sol": 1,
                        "earth_date": "2012-08-07",
                        "total_photos": 16,
                        "cameras": [
                            "MAHLI",
                            "MAST",
                            "NAVCAM"
                        ]
                    },
                    {
                        "sol": 2,
                        "earth_date": "2012-08-08",
                        "total_photos": 74,
                        "cameras": [
                            "NAVCAM"
                        ]
                    },
                    {
                        "sol": 3,
                        "earth_date": "2012-08-09",
                        "total_photos": 338,
                        "cameras": [
                            "MAST"
                        ]
                    },
                    {
                        "sol": 10,
                        "earth_date": "2012-08-16",
                        "total_photos": 26,
                        "cameras": [
                            "CHEMCAM",
                            "MAHLI",
                            "NAVCAM"
                        ]
                    }
                ]
            }
        }
        """.data(using: .utf8)!
        
        let mockSession = MockURLSession(data: validRoverJSON, error: nil)
        
        marsRoverClient.fetchMarsRover(named: "Curiosity", using: mockSession) { (rover, error) in
            
            guard error == nil else {
                XCTFail("The MarsRoverClient failed: \(error!)")
                return
            }
            
            XCTAssertEqual(rover?.name, "Curiosity")
            
            expectation.fulfill()
            
        }
        wait(for: [expectation], timeout: 5)
        
    }
    
    func fetchPhotos() {
        
        let marsRoverClient = MarsRoverClient()
        
        var curiosityRover: MarsRover?
        
        let expectation = self.expectation(description: "Waiting for MarsRover API")
        
        let validRoverJSON = """
        {
            "photo_manifest": {
                "name": "Curiosity",
                "landing_date": "2012-08-06",
                "launch_date": "2011-11-26",
                "status": "active",
                "max_sol": 10,
                "max_date": "2012-08-16",
                "total_photos": 4156,
                "photos": [{
                        "sol": 0,
                        "earth_date": "2012-08-06",
                        "total_photos": 3702,
                        "cameras": [
                            "CHEMCAM",
                            "FHAZ",
                            "MARDI",
                            "RHAZ"
                        ]
                    },
                    {
                        "sol": 1,
                        "earth_date": "2012-08-07",
                        "total_photos": 16,
                        "cameras": [
                            "MAHLI",
                            "MAST",
                            "NAVCAM"
                        ]
                    },
                    {
                        "sol": 2,
                        "earth_date": "2012-08-08",
                        "total_photos": 74,
                        "cameras": [
                            "NAVCAM"
                        ]
                    },
                    {
                        "sol": 3,
                        "earth_date": "2012-08-09",
                        "total_photos": 338,
                        "cameras": [
                            "MAST"
                        ]
                    },
                    {
                        "sol": 10,
                        "earth_date": "2012-08-16",
                        "total_photos": 26,
                        "cameras": [
                            "CHEMCAM",
                            "MAHLI",
                            "NAVCAM"
                        ]
                    }
                ]
            }
        }
        """.data(using: .utf8)!
        
        let mockSession = MockURLSession(data: validRoverJSON, error: nil)
        
        guard let rover = curiosityRover else {
            print("No rover")
            return
        }
        
        marsRoverClient.fetchPhotos(from: rover, onSol: 0, using: mockSession) { (photos, error) in
            
            guard error == nil else {
                XCTFail()
                print("Error loading rover images: \(error!)")
                return
            }
            
            guard let photos = photos else { return }
            XCTAssert(photos.count > 0)
            
            expectation.fulfill()
            
        }
        wait(for: [expectation], timeout: 5)
    }
    
}
