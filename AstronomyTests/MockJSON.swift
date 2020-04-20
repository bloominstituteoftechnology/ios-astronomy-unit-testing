//
//  MockJSON.swift
//  AstronomyTests
//
//  Created by Shawn Gee on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

enum MockJSON {
    static let validRoverData = """
    {
      "photo_manifest": {
        "name": "Curiosity",
        "landing_date": "2012-08-06",
        "launch_date": "2011-11-26",
        "status": "active",
        "max_sol": 2737,
        "max_date": "2020-04-18",
        "total_photos": 416203,
        "photos": [
          {
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
          }
        ]
      }
    }
    """.data(using: .utf8)!
    
    static let badRoverNameData = """
    {
    "errors": "Invalid Rover Name"
    }
    """

    static let validPhotoData = """
    {
      "photos": [
        {
          "id": 695,
          "sol": 63,
          "camera": {
            "id": 20,
            "name": "FHAZ",
            "rover_id": 5,
            "full_name": "Front Hazard Avoidance Camera"
          },
          "img_src": "http://mars.jpl.nasa.gov/msl-raw-images/proj/msl/redops/ods/surface/sol/00063/opgs/edr/fcam/FRA_403075179EDR_F0050104FHAZ00311M_.JPG",
          "earth_date": "2012-10-09",
          "rover": {
            "id": 5,
            "name": "Curiosity",
            "landing_date": "2012-08-06",
            "launch_date": "2011-11-26",
            "status": "active",
            "max_sol": 2737,
            "max_date": "2020-04-18",
            "total_photos": 416203,
            "cameras": [
              {
                "name": "FHAZ",
                "full_name": "Front Hazard Avoidance Camera"
              },
              {
                "name": "NAVCAM",
                "full_name": "Navigation Camera"
              },
              {
                "name": "MAST",
                "full_name": "Mast Camera"
              },
              {
                "name": "CHEMCAM",
                "full_name": "Chemistry and Camera Complex"
              },
              {
                "name": "MAHLI",
                "full_name": "Mars Hand Lens Imager"
              },
              {
                "name": "MARDI",
                "full_name": "Mars Descent Imager"
              },
              {
                "name": "RHAZ",
                "full_name": "Rear Hazard Avoidance Camera"
              }
            ]
          }
        },
        {
          "id": 9578,
          "sol": 63,
          "camera": {
            "id": 20,
            "name": "FHAZ",
            "rover_id": 5,
            "full_name": "Front Hazard Avoidance Camera"
          },
          "img_src": "http://mars.jpl.nasa.gov/msl-raw-images/proj/msl/redops/ods/surface/sol/00063/opgs/edr/fcam/FLA_403075179EDR_F0050104FHAZ00311M_.JPG",
          "earth_date": "2012-10-09",
          "rover": {
            "id": 5,
            "name": "Curiosity",
            "landing_date": "2012-08-06",
            "launch_date": "2011-11-26",
            "status": "active",
            "max_sol": 2737,
            "max_date": "2020-04-18",
            "total_photos": 416203,
            "cameras": [
              {
                "name": "FHAZ",
                "full_name": "Front Hazard Avoidance Camera"
              },
              {
                "name": "NAVCAM",
                "full_name": "Navigation Camera"
              },
              {
                "name": "MAST",
                "full_name": "Mast Camera"
              },
              {
                "name": "CHEMCAM",
                "full_name": "Chemistry and Camera Complex"
              },
              {
                "name": "MAHLI",
                "full_name": "Mars Hand Lens Imager"
              },
              {
                "name": "MARDI",
                "full_name": "Mars Descent Imager"
              },
              {
                "name": "RHAZ",
                "full_name": "Rear Hazard Avoidance Camera"
              }
            ]
          }
        },
        {
          "id": 1415,
          "sol": 63,
          "camera": {
            "id": 21,
            "name": "RHAZ",
            "rover_id": 5,
            "full_name": "Rear Hazard Avoidance Camera"
          },
          "img_src": "http://mars.jpl.nasa.gov/msl-raw-images/proj/msl/redops/ods/surface/sol/00063/opgs/edr/rcam/RRA_403075199EDR_F0050104RHAZ00309M_.JPG",
          "earth_date": "2012-10-09",
          "rover": {
            "id": 5,
            "name": "Curiosity",
            "landing_date": "2012-08-06",
            "launch_date": "2011-11-26",
            "status": "active",
            "max_sol": 2737,
            "max_date": "2020-04-18",
            "total_photos": 416203,
            "cameras": [
              {
                "name": "FHAZ",
                "full_name": "Front Hazard Avoidance Camera"
              },
              {
                "name": "NAVCAM",
                "full_name": "Navigation Camera"
              },
              {
                "name": "MAST",
                "full_name": "Mast Camera"
              },
              {
                "name": "CHEMCAM",
                "full_name": "Chemistry and Camera Complex"
              },
              {
                "name": "MAHLI",
                "full_name": "Mars Hand Lens Imager"
              },
              {
                "name": "MARDI",
                "full_name": "Mars Descent Imager"
              },
              {
                "name": "RHAZ",
                "full_name": "Rear Hazard Avoidance Camera"
              }
            ]
          }
        },
        {
          "id": 12629,
          "sol": 63,
          "camera": {
            "id": 21,
            "name": "RHAZ",
            "rover_id": 5,
            "full_name": "Rear Hazard Avoidance Camera"
          },
          "img_src": "http://mars.jpl.nasa.gov/msl-raw-images/proj/msl/redops/ods/surface/sol/00063/opgs/edr/rcam/RLA_403075199EDR_F0050104RHAZ00309M_.JPG",
          "earth_date": "2012-10-09",
          "rover": {
            "id": 5,
            "name": "Curiosity",
            "landing_date": "2012-08-06",
            "launch_date": "2011-11-26",
            "status": "active",
            "max_sol": 2737,
            "max_date": "2020-04-18",
            "total_photos": 416203,
            "cameras": [
              {
                "name": "FHAZ",
                "full_name": "Front Hazard Avoidance Camera"
              },
              {
                "name": "NAVCAM",
                "full_name": "Navigation Camera"
              },
              {
                "name": "MAST",
                "full_name": "Mast Camera"
              },
              {
                "name": "CHEMCAM",
                "full_name": "Chemistry and Camera Complex"
              },
              {
                "name": "MAHLI",
                "full_name": "Mars Hand Lens Imager"
              },
              {
                "name": "MARDI",
                "full_name": "Mars Descent Imager"
              },
              {
                "name": "RHAZ",
                "full_name": "Rear Hazard Avoidance Camera"
              }
            ]
          }
        }
      ]
    }
    """.data(using: .utf8)!
    
    static let noPhotoData = """
    {
      "photos": []
    }
    """.data(using: .utf8)!

    static let invalidData = """
    
    """.data(using: .utf8)!
}


