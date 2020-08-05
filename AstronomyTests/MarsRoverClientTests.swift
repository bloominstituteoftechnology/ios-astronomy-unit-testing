//
//  MarsRoverClientTests.swift
//  MarsRoverClientTests
//
//  Created by Elizabeth Thomas on 8/5/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest
@testable import Astronomy

class MarsRoverClientTests: XCTestCase {
    
    func testFetchMarsRover() {
        
        let roverExpectation = expectation(description: "Waiting for rover")
        let marsRoverClient = MarsRoverClient()
        
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
        
        let mockLoader = MockAPI(data: validRoverJSON, error: nil)
        
        marsRoverClient.fetchMarsRover(named: "Curiosity", using: mockLoader) { (rover, error) in
            if error != nil {
                XCTFail("Error fetching rover")
            }
            
            roverExpectation.fulfill()
            XCTAssert(rover != nil)
        }
        
        wait(for: [roverExpectation], timeout: 5)
        
    }
    
    
    func testfetchPhotos() {
        let marsRoverClient = MarsRoverClient()
        var curisorityRover: MarsRover?
        
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
        
        let mockLoader = MockAPI(data: validRoverJSON, error: nil)
        
        // Fetching rover, so I can fetch the photos
        let roverExpectation = expectation(description: "Waiting for rover")

        marsRoverClient.fetchMarsRover(named: "Curiosity", using: mockLoader) { (rover, error) in
            if error != nil {
                XCTFail("Error fetching rover")
            }
            
            roverExpectation.fulfill()
            XCTAssert(rover != nil)
        }
        
        wait(for: [roverExpectation], timeout: 5)
        
        guard let rover = curisorityRover else { print("No rover"); return }
        
        // Fetching images from rover
        let photoExpectation = expectation(description: "Waiting for photos")

        marsRoverClient.fetchPhotos(from: rover, onSol: 0, using: mockLoader) { (photos, error) in
            guard error == nil else {
                XCTFail("Error loading images")
                return
            }
            
            guard let photos = photos else { return }
            XCTAssert(photos.count > 0)
            photoExpectation.fulfill()
            
        }
        wait(for: [photoExpectation], timeout: 5)
    }
    
}
