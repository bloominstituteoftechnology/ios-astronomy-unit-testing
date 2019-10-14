//
//  MockResultData.swift
//  AstronomyTests
//
//  Created by Jake Connerly on 10/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

let validRoverJSON = """
{
  "photo_manifest": {
    "name": "Curiosity",
    "landing_date": "2012-08-06",
    "launch_date": "2011-11-26",
    "status": "active",
    "max_sol": 2540,
    "max_date": "2019-09-28",
    "total_photos": 366206,
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
      },
      {
        "sol": 12,
        "earth_date": "2012-08-18",
        "total_photos": 32,
        "cameras": [
          "CHEMCAM",
          "NAVCAM"
        ]
      },
      {
        "sol": 13,
        "earth_date": "2012-08-19",
        "total_photos": 208,
        "cameras": [
          "CHEMCAM",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 14,
        "earth_date": "2012-08-20",
        "total_photos": 70,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 15,
        "earth_date": "2012-08-21",
        "total_photos": 58,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 16,
        "earth_date": "2012-08-22",
        "total_photos": 78,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 17,
        "earth_date": "2012-08-23",
        "total_photos": 273,
        "cameras": [
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 19,
        "earth_date": "2012-08-25",
        "total_photos": 444,
        "cameras": [
          "CHEMCAM",
          "MAST"
        ]
      },
      {
        "sol": 20,
        "earth_date": "2012-08-26",
        "total_photos": 1046,
        "cameras": [
          "MAST"
        ]
      },
      {
        "sol": 21,
        "earth_date": "2012-08-27",
        "total_photos": 73,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 22,
        "earth_date": "2012-08-28",
        "total_photos": 52,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 23,
        "earth_date": "2012-08-29",
        "total_photos": 379,
        "cameras": [
          "MARDI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 24,
        "earth_date": "2012-08-30",
        "total_photos": 218,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 25,
        "earth_date": "2012-08-31",
        "total_photos": 382,
        "cameras": [
          "MARDI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 26,
        "earth_date": "2012-09-01",
        "total_photos": 76,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 27,
        "earth_date": "2012-09-02",
        "total_photos": 98,
        "cameras": [
          "CHEMCAM",
          "MARDI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 29,
        "earth_date": "2012-09-04",
        "total_photos": 68,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 30,
        "earth_date": "2012-09-05",
        "total_photos": 87,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 32,
        "earth_date": "2012-09-07",
        "total_photos": 184,
        "cameras": [
          "CHEMCAM",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 33,
        "earth_date": "2012-09-08",
        "total_photos": 94,
        "cameras": [
          "CHEMCAM",
          "MAHLI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 34,
        "earth_date": "2012-09-09",
        "total_photos": 76,
        "cameras": [
          "CHEMCAM",
          "MAHLI"
        ]
      },
      {
        "sol": 35,
        "earth_date": "2012-09-10",
        "total_photos": 33,
        "cameras": [
          "MAST"
        ]
      },
      {
        "sol": 36,
        "earth_date": "2012-09-11",
        "total_photos": 221,
        "cameras": [
          "MAHLI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 37,
        "earth_date": "2012-09-13",
        "total_photos": 1006,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 38,
        "earth_date": "2012-09-14",
        "total_photos": 132,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 39,
        "earth_date": "2012-09-15",
        "total_photos": 122,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 40,
        "earth_date": "2012-09-16",
        "total_photos": 86,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 41,
        "earth_date": "2012-09-17",
        "total_photos": 100,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 42,
        "earth_date": "2012-09-18",
        "total_photos": 2683,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 43,
        "earth_date": "2012-09-19",
        "total_photos": 91,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 44,
        "earth_date": "2012-09-20",
        "total_photos": 558,
        "cameras": [
          "MAHLI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 45,
        "earth_date": "2012-09-21",
        "total_photos": 291,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 46,
        "earth_date": "2012-09-22",
        "total_photos": 117,
        "cameras": [
          "CHEMCAM",
          "MAHLI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 47,
        "earth_date": "2012-09-23",
        "total_photos": 152,
        "cameras": [
          "CHEMCAM",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 48,
        "earth_date": "2012-09-24",
        "total_photos": 227,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 49,
        "earth_date": "2012-09-25",
        "total_photos": 266,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 50,
        "earth_date": "2012-09-26",
        "total_photos": 372,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 51,
        "earth_date": "2012-09-27",
        "total_photos": 292,
        "cameras": [
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 52,
        "earth_date": "2012-09-28",
        "total_photos": 221,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 53,
        "earth_date": "2012-09-29",
        "total_photos": 166,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 54,
        "earth_date": "2012-09-30",
        "total_photos": 353,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 55,
        "earth_date": "2012-10-01",
        "total_photos": 216,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 56,
        "earth_date": "2012-10-02",
        "total_photos": 122,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 57,
        "earth_date": "2012-10-03",
        "total_photos": 125,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 58,
        "earth_date": "2012-10-04",
        "total_photos": 242,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 59,
        "earth_date": "2012-10-05",
        "total_photos": 176,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 60,
        "earth_date": "2012-10-06",
        "total_photos": 262,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 61,
        "earth_date": "2012-10-07",
        "total_photos": 406,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 62,
        "earth_date": "2012-10-08",
        "total_photos": 28,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 63,
        "earth_date": "2012-10-09",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 64,
        "earth_date": "2012-10-10",
        "total_photos": 510,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 65,
        "earth_date": "2012-10-11",
        "total_photos": 143,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 66,
        "earth_date": "2012-10-12",
        "total_photos": 703,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 67,
        "earth_date": "2012-10-13",
        "total_photos": 356,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 68,
        "earth_date": "2012-10-14",
        "total_photos": 22,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 69,
        "earth_date": "2012-10-15",
        "total_photos": 490,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 70,
        "earth_date": "2012-10-16",
        "total_photos": 110,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 71,
        "earth_date": "2012-10-17",
        "total_photos": 206,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 72,
        "earth_date": "2012-10-18",
        "total_photos": 281,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 73,
        "earth_date": "2012-10-20",
        "total_photos": 100,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 74,
        "earth_date": "2012-10-21",
        "total_photos": 478,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 75,
        "earth_date": "2012-10-22",
        "total_photos": 139,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 76,
        "earth_date": "2012-10-23",
        "total_photos": 120,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 77,
        "earth_date": "2012-10-24",
        "total_photos": 166,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 78,
        "earth_date": "2012-10-25",
        "total_photos": 716,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 79,
        "earth_date": "2012-10-26",
        "total_photos": 137,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 80,
        "earth_date": "2012-10-27",
        "total_photos": 95,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 81,
        "earth_date": "2012-10-28",
        "total_photos": 98,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 82,
        "earth_date": "2012-10-29",
        "total_photos": 192,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 84,
        "earth_date": "2012-10-31",
        "total_photos": 246,
        "cameras": [
          "CHEMCAM",
          "MAHLI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 85,
        "earth_date": "2012-11-01",
        "total_photos": 216,
        "cameras": [
          "CHEMCAM",
          "MAHLI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 86,
        "earth_date": "2012-11-02",
        "total_photos": 95,
        "cameras": [
          "MAHLI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 87,
        "earth_date": "2012-11-03",
        "total_photos": 161,
        "cameras": [
          "CHEMCAM",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 88,
        "earth_date": "2012-11-04",
        "total_photos": 112,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 89,
        "earth_date": "2012-11-05",
        "total_photos": 192,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 90,
        "earth_date": "2012-11-06",
        "total_photos": 122,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 91,
        "earth_date": "2012-11-07",
        "total_photos": 14,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 92,
        "earth_date": "2012-11-08",
        "total_photos": 9,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 93,
        "earth_date": "2012-11-09",
        "total_photos": 128,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 94,
        "earth_date": "2012-11-10",
        "total_photos": 113,
        "cameras": [
          "MAHLI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 95,
        "earth_date": "2012-11-11",
        "total_photos": 43,
        "cameras": [
          "MAHLI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 96,
        "earth_date": "2012-11-12",
        "total_photos": 58,
        "cameras": [
          "MAHLI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 97,
        "earth_date": "2012-11-13",
        "total_photos": 20,
        "cameras": [
          "CHEMCAM",
          "MAST"
        ]
      },
      {
        "sol": 98,
        "earth_date": "2012-11-14",
        "total_photos": 40,
        "cameras": [
          "MAHLI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 100,
        "earth_date": "2012-11-16",
        "total_photos": 400,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 101,
        "earth_date": "2012-11-17",
        "total_photos": 128,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 102,
        "earth_date": "2012-11-18",
        "total_photos": 113,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 103,
        "earth_date": "2012-11-19",
        "total_photos": 32,
        "cameras": [
          "MARDI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 104,
        "earth_date": "2012-11-20",
        "total_photos": 68,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 105,
        "earth_date": "2012-11-21",
        "total_photos": 12,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 106,
        "earth_date": "2012-11-22",
        "total_photos": 224,
        "cameras": [
          "MAST"
        ]
      },
      {
        "sol": 107,
        "earth_date": "2012-11-23",
        "total_photos": 432,
        "cameras": [
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 108,
        "earth_date": "2012-11-24",
        "total_photos": 270,
        "cameras": [
          "MAST"
        ]
      },
      {
        "sol": 109,
        "earth_date": "2012-11-25",
        "total_photos": 534,
        "cameras": [
          "MAST"
        ]
      },
      {
        "sol": 110,
        "earth_date": "2012-11-27",
        "total_photos": 476,
        "cameras": [
          "MAST"
        ]
      },
      {
        "sol": 111,
        "earth_date": "2012-11-28",
        "total_photos": 501,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 112,
        "earth_date": "2012-11-29",
        "total_photos": 140,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 113,
        "earth_date": "2012-11-30",
        "total_photos": 133,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 114,
        "earth_date": "2012-12-01",
        "total_photos": 132,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 115,
        "earth_date": "2012-12-02",
        "total_photos": 37,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 116,
        "earth_date": "2012-12-03",
        "total_photos": 171,
        "cameras": [
          "CHEMCAM",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 117,
        "earth_date": "2012-12-04",
        "total_photos": 64,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 118,
        "earth_date": "2012-12-05",
        "total_photos": 120,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 119,
        "earth_date": "2012-12-06",
        "total_photos": 86,
        "cameras": [
          "CHEMCAM",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 120,
        "earth_date": "2012-12-07",
        "total_photos": 424,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 121,
        "earth_date": "2012-12-08",
        "total_photos": 344,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 122,
        "earth_date": "2012-12-09",
        "total_photos": 158,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 123,
        "earth_date": "2012-12-10",
        "total_photos": 134,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 124,
        "earth_date": "2012-12-11",
        "total_photos": 124,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 125,
        "earth_date": "2012-12-12",
        "total_photos": 137,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 126,
        "earth_date": "2012-12-13",
        "total_photos": 98,
        "cameras": [
          "CHEMCAM",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 127,
        "earth_date": "2012-12-14",
        "total_photos": 135,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 128,
        "earth_date": "2012-12-15",
        "total_photos": 58,
        "cameras": [
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 129,
        "earth_date": "2012-12-16",
        "total_photos": 180,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 130,
        "earth_date": "2012-12-17",
        "total_photos": 131,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 131,
        "earth_date": "2012-12-18",
        "total_photos": 58,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 132,
        "earth_date": "2012-12-19",
        "total_photos": 188,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 133,
        "earth_date": "2012-12-20",
        "total_photos": 318,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 134,
        "earth_date": "2012-12-21",
        "total_photos": 70,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 135,
        "earth_date": "2012-12-22",
        "total_photos": 184,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 136,
        "earth_date": "2012-12-23",
        "total_photos": 122,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 137,
        "earth_date": "2012-12-24",
        "total_photos": 550,
        "cameras": [
          "MAST"
        ]
      },
      {
        "sol": 138,
        "earth_date": "2012-12-25",
        "total_photos": 372,
        "cameras": [
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 139,
        "earth_date": "2012-12-26",
        "total_photos": 64,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 141,
        "earth_date": "2012-12-28",
        "total_photos": 387,
        "cameras": [
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 142,
        "earth_date": "2012-12-29",
        "total_photos": 64,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 143,
        "earth_date": "2012-12-30",
        "total_photos": 64,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 144,
        "earth_date": "2012-12-31",
        "total_photos": 64,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 145,
        "earth_date": "2013-01-01",
        "total_photos": 64,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 146,
        "earth_date": "2013-01-03",
        "total_photos": 64,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 147,
        "earth_date": "2013-01-04",
        "total_photos": 181,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 148,
        "earth_date": "2013-01-05",
        "total_photos": 38,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 149,
        "earth_date": "2013-01-06",
        "total_photos": 193,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 150,
        "earth_date": "2013-01-07",
        "total_photos": 257,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 151,
        "earth_date": "2013-01-08",
        "total_photos": 83,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 152,
        "earth_date": "2013-01-09",
        "total_photos": 54,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 153,
        "earth_date": "2013-01-10",
        "total_photos": 275,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 154,
        "earth_date": "2013-01-11",
        "total_photos": 271,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 155,
        "earth_date": "2013-01-12",
        "total_photos": 61,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 156,
        "earth_date": "2013-01-13",
        "total_photos": 78,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 157,
        "earth_date": "2013-01-14",
        "total_photos": 88,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 158,
        "earth_date": "2013-01-15",
        "total_photos": 334,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 159,
        "earth_date": "2013-01-16",
        "total_photos": 199,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 160,
        "earth_date": "2013-01-17",
        "total_photos": 244,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 161,
        "earth_date": "2013-01-18",
        "total_photos": 311,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 162,
        "earth_date": "2013-01-19",
        "total_photos": 318,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 163,
        "earth_date": "2013-01-20",
        "total_photos": 264,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 164,
        "earth_date": "2013-01-21",
        "total_photos": 274,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 165,
        "earth_date": "2013-01-22",
        "total_photos": 239,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 166,
        "earth_date": "2013-01-23",
        "total_photos": 237,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 167,
        "earth_date": "2013-01-24",
        "total_photos": 66,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 168,
        "earth_date": "2013-01-25",
        "total_photos": 267,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 169,
        "earth_date": "2013-01-26",
        "total_photos": 220,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 170,
        "earth_date": "2013-01-27",
        "total_photos": 268,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 171,
        "earth_date": "2013-01-28",
        "total_photos": 164,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 172,
        "earth_date": "2013-01-29",
        "total_photos": 728,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 173,
        "earth_date": "2013-01-30",
        "total_photos": 759,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 174,
        "earth_date": "2013-01-31",
        "total_photos": 174,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 175,
        "earth_date": "2013-02-01",
        "total_photos": 66,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 176,
        "earth_date": "2013-02-02",
        "total_photos": 155,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 177,
        "earth_date": "2013-02-03",
        "total_photos": 233,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 178,
        "earth_date": "2013-02-04",
        "total_photos": 94,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 179,
        "earth_date": "2013-02-05",
        "total_photos": 164,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 180,
        "earth_date": "2013-02-06",
        "total_photos": 103,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 181,
        "earth_date": "2013-02-07",
        "total_photos": 374,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 182,
        "earth_date": "2013-02-09",
        "total_photos": 202,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 183,
        "earth_date": "2013-02-10",
        "total_photos": 142,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 184,
        "earth_date": "2013-02-11",
        "total_photos": 686,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 185,
        "earth_date": "2013-02-12",
        "total_photos": 186,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 186,
        "earth_date": "2013-02-13",
        "total_photos": 584,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 187,
        "earth_date": "2013-02-14",
        "total_photos": 46,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 188,
        "earth_date": "2013-02-15",
        "total_photos": 248,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 189,
        "earth_date": "2013-02-16",
        "total_photos": 100,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 190,
        "earth_date": "2013-02-17",
        "total_photos": 62,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 192,
        "earth_date": "2013-02-19",
        "total_photos": 744,
        "cameras": [
          "CHEMCAM",
          "MAHLI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 193,
        "earth_date": "2013-02-20",
        "total_photos": 194,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 194,
        "earth_date": "2013-02-21",
        "total_photos": 319,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 195,
        "earth_date": "2013-02-22",
        "total_photos": 23,
        "cameras": [
          "CHEMCAM",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 196,
        "earth_date": "2013-02-23",
        "total_photos": 14,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 197,
        "earth_date": "2013-02-24",
        "total_photos": 2,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 198,
        "earth_date": "2013-02-25",
        "total_photos": 294,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 199,
        "earth_date": "2013-02-26",
        "total_photos": 19,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 200,
        "earth_date": "2013-02-27",
        "total_photos": 88,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 215,
        "earth_date": "2013-03-14",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 216,
        "earth_date": "2013-03-15",
        "total_photos": 2,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 222,
        "earth_date": "2013-03-22",
        "total_photos": 11,
        "cameras": [
          "CHEMCAM",
          "NAVCAM"
        ]
      },
      {
        "sol": 223,
        "earth_date": "2013-03-23",
        "total_photos": 76,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 224,
        "earth_date": "2013-03-24",
        "total_photos": 26,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 225,
        "earth_date": "2013-03-25",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 226,
        "earth_date": "2013-03-26",
        "total_photos": 92,
        "cameras": [
          "CHEMCAM",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 227,
        "earth_date": "2013-03-27",
        "total_photos": 80,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 228,
        "earth_date": "2013-03-28",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 229,
        "earth_date": "2013-03-29",
        "total_photos": 90,
        "cameras": [
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 230,
        "earth_date": "2013-03-30",
        "total_photos": 107,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 231,
        "earth_date": "2013-03-31",
        "total_photos": 42,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 232,
        "earth_date": "2013-04-01",
        "total_photos": 254,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 233,
        "earth_date": "2013-04-02",
        "total_photos": 208,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 234,
        "earth_date": "2013-04-03",
        "total_photos": 146,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 235,
        "earth_date": "2013-04-04",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 262,
        "earth_date": "2013-05-02",
        "total_photos": 36,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 263,
        "earth_date": "2013-05-03",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 267,
        "earth_date": "2013-05-07",
        "total_photos": 30,
        "cameras": [
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 268,
        "earth_date": "2013-05-08",
        "total_photos": 94,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 269,
        "earth_date": "2013-05-09",
        "total_photos": 294,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 270,
        "earth_date": "2013-05-10",
        "total_photos": 748,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 271,
        "earth_date": "2013-05-11",
        "total_photos": 472,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 272,
        "earth_date": "2013-05-12",
        "total_photos": 100,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 273,
        "earth_date": "2013-05-13",
        "total_photos": 34,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 274,
        "earth_date": "2013-05-14",
        "total_photos": 150,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 275,
        "earth_date": "2013-05-15",
        "total_photos": 99,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 276,
        "earth_date": "2013-05-16",
        "total_photos": 79,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 277,
        "earth_date": "2013-05-17",
        "total_photos": 92,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 278,
        "earth_date": "2013-05-18",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 279,
        "earth_date": "2013-05-19",
        "total_photos": 290,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 280,
        "earth_date": "2013-05-20",
        "total_photos": 20,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 281,
        "earth_date": "2013-05-21",
        "total_photos": 104,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 282,
        "earth_date": "2013-05-22",
        "total_photos": 86,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 283,
        "earth_date": "2013-05-23",
        "total_photos": 232,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 284,
        "earth_date": "2013-05-24",
        "total_photos": 755,
        "cameras": [
          "MAST"
        ]
      },
      {
        "sol": 285,
        "earth_date": "2013-05-25",
        "total_photos": 60,
        "cameras": [
          "CHEMCAM",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 286,
        "earth_date": "2013-05-26",
        "total_photos": 28,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 287,
        "earth_date": "2013-05-27",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 288,
        "earth_date": "2013-05-28",
        "total_photos": 66,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 289,
        "earth_date": "2013-05-29",
        "total_photos": 1218,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 290,
        "earth_date": "2013-05-30",
        "total_photos": 82,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 291,
        "earth_date": "2013-05-31",
        "total_photos": 223,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 292,
        "earth_date": "2013-06-02",
        "total_photos": 335,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST"
        ]
      },
      {
        "sol": 293,
        "earth_date": "2013-06-03",
        "total_photos": 60,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 294,
        "earth_date": "2013-06-04",
        "total_photos": 40,
        "cameras": [
          "CHEMCAM",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 295,
        "earth_date": "2013-06-05",
        "total_photos": 40,
        "cameras": [
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 296,
        "earth_date": "2013-06-06",
        "total_photos": 62,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 297,
        "earth_date": "2013-06-07",
        "total_photos": 238,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 298,
        "earth_date": "2013-06-08",
        "total_photos": 274,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 299,
        "earth_date": "2013-06-09",
        "total_photos": 56,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 300,
        "earth_date": "2013-06-10",
        "total_photos": 116,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 301,
        "earth_date": "2013-06-11",
        "total_photos": 144,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 302,
        "earth_date": "2013-06-12",
        "total_photos": 174,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 303,
        "earth_date": "2013-06-13",
        "total_photos": 466,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 304,
        "earth_date": "2013-06-14",
        "total_photos": 285,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 305,
        "earth_date": "2013-06-15",
        "total_photos": 94,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 306,
        "earth_date": "2013-06-16",
        "total_photos": 324,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 307,
        "earth_date": "2013-06-17",
        "total_photos": 56,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 308,
        "earth_date": "2013-06-18",
        "total_photos": 330,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 309,
        "earth_date": "2013-06-19",
        "total_photos": 340,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 310,
        "earth_date": "2013-06-20",
        "total_photos": 47,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 311,
        "earth_date": "2013-06-21",
        "total_photos": 246,
        "cameras": [
          "CHEMCAM",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 312,
        "earth_date": "2013-06-22",
        "total_photos": 138,
        "cameras": [
          "CHEMCAM",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 313,
        "earth_date": "2013-06-23",
        "total_photos": 784,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 314,
        "earth_date": "2013-06-24",
        "total_photos": 480,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 315,
        "earth_date": "2013-06-25",
        "total_photos": 812,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 316,
        "earth_date": "2013-06-26",
        "total_photos": 522,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 317,
        "earth_date": "2013-06-27",
        "total_photos": 360,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 318,
        "earth_date": "2013-06-28",
        "total_photos": 866,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 319,
        "earth_date": "2013-06-29",
        "total_photos": 506,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 320,
        "earth_date": "2013-06-30",
        "total_photos": 192,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 321,
        "earth_date": "2013-07-01",
        "total_photos": 36,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 322,
        "earth_date": "2013-07-02",
        "total_photos": 233,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 323,
        "earth_date": "2013-07-03",
        "total_photos": 407,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 324,
        "earth_date": "2013-07-04",
        "total_photos": 129,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 325,
        "earth_date": "2013-07-05",
        "total_photos": 72,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 326,
        "earth_date": "2013-07-06",
        "total_photos": 46,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 327,
        "earth_date": "2013-07-07",
        "total_photos": 116,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 328,
        "earth_date": "2013-07-09",
        "total_photos": 34,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 329,
        "earth_date": "2013-07-10",
        "total_photos": 152,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 330,
        "earth_date": "2013-07-11",
        "total_photos": 112,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 331,
        "earth_date": "2013-07-12",
        "total_photos": 144,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 332,
        "earth_date": "2013-07-13",
        "total_photos": 64,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 333,
        "earth_date": "2013-07-14",
        "total_photos": 137,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 334,
        "earth_date": "2013-07-15",
        "total_photos": 8,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 335,
        "earth_date": "2013-07-16",
        "total_photos": 111,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 336,
        "earth_date": "2013-07-17",
        "total_photos": 100,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 337,
        "earth_date": "2013-07-18",
        "total_photos": 188,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 338,
        "earth_date": "2013-07-19",
        "total_photos": 215,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 339,
        "earth_date": "2013-07-20",
        "total_photos": 40,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 340,
        "earth_date": "2013-07-21",
        "total_photos": 218,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 341,
        "earth_date": "2013-07-22",
        "total_photos": 32,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 342,
        "earth_date": "2013-07-23",
        "total_photos": 177,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 343,
        "earth_date": "2013-07-24",
        "total_photos": 135,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 344,
        "earth_date": "2013-07-25",
        "total_photos": 296,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 345,
        "earth_date": "2013-07-26",
        "total_photos": 287,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 346,
        "earth_date": "2013-07-27",
        "total_photos": 184,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 347,
        "earth_date": "2013-07-28",
        "total_photos": 97,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 348,
        "earth_date": "2013-07-29",
        "total_photos": 82,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 349,
        "earth_date": "2013-07-30",
        "total_photos": 171,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 350,
        "earth_date": "2013-07-31",
        "total_photos": 42,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 351,
        "earth_date": "2013-08-01",
        "total_photos": 335,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 352,
        "earth_date": "2013-08-02",
        "total_photos": 278,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 353,
        "earth_date": "2013-08-03",
        "total_photos": 42,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 354,
        "earth_date": "2013-08-04",
        "total_photos": 106,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 355,
        "earth_date": "2013-08-05",
        "total_photos": 30,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 356,
        "earth_date": "2013-08-06",
        "total_photos": 177,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 357,
        "earth_date": "2013-08-07",
        "total_photos": 82,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 358,
        "earth_date": "2013-08-08",
        "total_photos": 139,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 359,
        "earth_date": "2013-08-09",
        "total_photos": 48,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 360,
        "earth_date": "2013-08-10",
        "total_photos": 130,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 361,
        "earth_date": "2013-08-11",
        "total_photos": 93,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 362,
        "earth_date": "2013-08-12",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "MARDI",
          "RHAZ"
        ]
      },
      {
        "sol": 363,
        "earth_date": "2013-08-13",
        "total_photos": 283,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 364,
        "earth_date": "2013-08-15",
        "total_photos": 212,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 365,
        "earth_date": "2013-08-16",
        "total_photos": 180,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 366,
        "earth_date": "2013-08-17",
        "total_photos": 20,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 367,
        "earth_date": "2013-08-18",
        "total_photos": 22,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 368,
        "earth_date": "2013-08-19",
        "total_photos": 230,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 369,
        "earth_date": "2013-08-20",
        "total_photos": 372,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 370,
        "earth_date": "2013-08-21",
        "total_photos": 154,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 371,
        "earth_date": "2013-08-22",
        "total_photos": 353,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 372,
        "earth_date": "2013-08-23",
        "total_photos": 229,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 373,
        "earth_date": "2013-08-24",
        "total_photos": 250,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 374,
        "earth_date": "2013-08-25",
        "total_photos": 117,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 375,
        "earth_date": "2013-08-26",
        "total_photos": 226,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 376,
        "earth_date": "2013-08-27",
        "total_photos": 313,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 377,
        "earth_date": "2013-08-28",
        "total_photos": 301,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 378,
        "earth_date": "2013-08-29",
        "total_photos": 223,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 379,
        "earth_date": "2013-08-30",
        "total_photos": 179,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 380,
        "earth_date": "2013-08-31",
        "total_photos": 28,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 381,
        "earth_date": "2013-09-01",
        "total_photos": 12,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 382,
        "earth_date": "2013-09-02",
        "total_photos": 94,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 383,
        "earth_date": "2013-09-03",
        "total_photos": 96,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 384,
        "earth_date": "2013-09-04",
        "total_photos": 248,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 385,
        "earth_date": "2013-09-05",
        "total_photos": 520,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 386,
        "earth_date": "2013-09-06",
        "total_photos": 28,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 387,
        "earth_date": "2013-09-07",
        "total_photos": 375,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 388,
        "earth_date": "2013-09-08",
        "total_photos": 629,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 389,
        "earth_date": "2013-09-09",
        "total_photos": 390,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 390,
        "earth_date": "2013-09-10",
        "total_photos": 309,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 391,
        "earth_date": "2013-09-11",
        "total_photos": 30,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 392,
        "earth_date": "2013-09-12",
        "total_photos": 227,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 393,
        "earth_date": "2013-09-13",
        "total_photos": 130,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 394,
        "earth_date": "2013-09-14",
        "total_photos": 162,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 395,
        "earth_date": "2013-09-15",
        "total_photos": 244,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 396,
        "earth_date": "2013-09-16",
        "total_photos": 189,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 397,
        "earth_date": "2013-09-17",
        "total_photos": 258,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 398,
        "earth_date": "2013-09-18",
        "total_photos": 241,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 399,
        "earth_date": "2013-09-19",
        "total_photos": 268,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 400,
        "earth_date": "2013-09-20",
        "total_photos": 502,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 401,
        "earth_date": "2013-09-22",
        "total_photos": 368,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 402,
        "earth_date": "2013-09-23",
        "total_photos": 155,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 403,
        "earth_date": "2013-09-24",
        "total_photos": 546,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 404,
        "earth_date": "2013-09-25",
        "total_photos": 429,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 406,
        "earth_date": "2013-09-27",
        "total_photos": 319,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 407,
        "earth_date": "2013-09-28",
        "total_photos": 40,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 408,
        "earth_date": "2013-09-29",
        "total_photos": 128,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 409,
        "earth_date": "2013-09-30",
        "total_photos": 397,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 410,
        "earth_date": "2013-10-01",
        "total_photos": 299,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 411,
        "earth_date": "2013-10-02",
        "total_photos": 77,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 412,
        "earth_date": "2013-10-03",
        "total_photos": 189,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 413,
        "earth_date": "2013-10-04",
        "total_photos": 241,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 414,
        "earth_date": "2013-10-05",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 415,
        "earth_date": "2013-10-06",
        "total_photos": 12,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 416,
        "earth_date": "2013-10-07",
        "total_photos": 89,
        "cameras": [
          "CHEMCAM",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 417,
        "earth_date": "2013-10-08",
        "total_photos": 270,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 418,
        "earth_date": "2013-10-09",
        "total_photos": 31,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 419,
        "earth_date": "2013-10-10",
        "total_photos": 228,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 420,
        "earth_date": "2013-10-11",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 421,
        "earth_date": "2013-10-12",
        "total_photos": 247,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 422,
        "earth_date": "2013-10-13",
        "total_photos": 140,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 423,
        "earth_date": "2013-10-14",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 424,
        "earth_date": "2013-10-15",
        "total_photos": 475,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 425,
        "earth_date": "2013-10-16",
        "total_photos": 234,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 426,
        "earth_date": "2013-10-17",
        "total_photos": 254,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 427,
        "earth_date": "2013-10-18",
        "total_photos": 40,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 429,
        "earth_date": "2013-10-20",
        "total_photos": 299,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 430,
        "earth_date": "2013-10-21",
        "total_photos": 24,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 431,
        "earth_date": "2013-10-22",
        "total_photos": 549,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 432,
        "earth_date": "2013-10-23",
        "total_photos": 116,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 433,
        "earth_date": "2013-10-24",
        "total_photos": 345,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 434,
        "earth_date": "2013-10-25",
        "total_photos": 108,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 435,
        "earth_date": "2013-10-26",
        "total_photos": 88,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 436,
        "earth_date": "2013-10-27",
        "total_photos": 449,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 437,
        "earth_date": "2013-10-29",
        "total_photos": 661,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 438,
        "earth_date": "2013-10-30",
        "total_photos": 362,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 439,
        "earth_date": "2013-10-31",
        "total_photos": 373,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 440,
        "earth_date": "2013-11-01",
        "total_photos": 395,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 441,
        "earth_date": "2013-11-02",
        "total_photos": 283,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 442,
        "earth_date": "2013-11-03",
        "total_photos": 292,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 443,
        "earth_date": "2013-11-04",
        "total_photos": 84,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 453,
        "earth_date": "2013-11-14",
        "total_photos": 337,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 454,
        "earth_date": "2013-11-15",
        "total_photos": 306,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 455,
        "earth_date": "2013-11-16",
        "total_photos": 484,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 456,
        "earth_date": "2013-11-17",
        "total_photos": 87,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 462,
        "earth_date": "2013-11-23",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 463,
        "earth_date": "2013-11-24",
        "total_photos": 43,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 464,
        "earth_date": "2013-11-25",
        "total_photos": 18,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 465,
        "earth_date": "2013-11-26",
        "total_photos": 189,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 466,
        "earth_date": "2013-11-27",
        "total_photos": 18,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 467,
        "earth_date": "2013-11-28",
        "total_photos": 315,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 468,
        "earth_date": "2013-11-29",
        "total_photos": 567,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 469,
        "earth_date": "2013-11-30",
        "total_photos": 85,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 470,
        "earth_date": "2013-12-01",
        "total_photos": 398,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 471,
        "earth_date": "2013-12-02",
        "total_photos": 40,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 472,
        "earth_date": "2013-12-03",
        "total_photos": 270,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 473,
        "earth_date": "2013-12-05",
        "total_photos": 24,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 474,
        "earth_date": "2013-12-06",
        "total_photos": 247,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 475,
        "earth_date": "2013-12-07",
        "total_photos": 162,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 476,
        "earth_date": "2013-12-08",
        "total_photos": 27,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 477,
        "earth_date": "2013-12-09",
        "total_photos": 121,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 478,
        "earth_date": "2013-12-10",
        "total_photos": 64,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 485,
        "earth_date": "2013-12-17",
        "total_photos": 184,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 486,
        "earth_date": "2013-12-18",
        "total_photos": 288,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 487,
        "earth_date": "2013-12-19",
        "total_photos": 358,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 488,
        "earth_date": "2013-12-20",
        "total_photos": 233,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 489,
        "earth_date": "2013-12-21",
        "total_photos": 222,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 490,
        "earth_date": "2013-12-22",
        "total_photos": 254,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 491,
        "earth_date": "2013-12-23",
        "total_photos": 32,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 492,
        "earth_date": "2013-12-24",
        "total_photos": 60,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 493,
        "earth_date": "2013-12-25",
        "total_photos": 112,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 494,
        "earth_date": "2013-12-26",
        "total_photos": 520,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 502,
        "earth_date": "2014-01-03",
        "total_photos": 147,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 503,
        "earth_date": "2014-01-04",
        "total_photos": 132,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 504,
        "earth_date": "2014-01-05",
        "total_photos": 268,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 505,
        "earth_date": "2014-01-06",
        "total_photos": 74,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 506,
        "earth_date": "2014-01-07",
        "total_photos": 254,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 507,
        "earth_date": "2014-01-08",
        "total_photos": 98,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 508,
        "earth_date": "2014-01-09",
        "total_photos": 336,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 509,
        "earth_date": "2014-01-10",
        "total_photos": 216,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 510,
        "earth_date": "2014-01-12",
        "total_photos": 129,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 511,
        "earth_date": "2014-01-13",
        "total_photos": 290,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 512,
        "earth_date": "2014-01-14",
        "total_photos": 169,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 513,
        "earth_date": "2014-01-15",
        "total_photos": 308,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 514,
        "earth_date": "2014-01-16",
        "total_photos": 154,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 515,
        "earth_date": "2014-01-17",
        "total_photos": 272,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 516,
        "earth_date": "2014-01-18",
        "total_photos": 86,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 517,
        "earth_date": "2014-01-19",
        "total_photos": 63,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 518,
        "earth_date": "2014-01-20",
        "total_photos": 196,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 519,
        "earth_date": "2014-01-21",
        "total_photos": 222,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 520,
        "earth_date": "2014-01-22",
        "total_photos": 280,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 521,
        "earth_date": "2014-01-23",
        "total_photos": 246,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 522,
        "earth_date": "2014-01-24",
        "total_photos": 136,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 523,
        "earth_date": "2014-01-25",
        "total_photos": 88,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 524,
        "earth_date": "2014-01-26",
        "total_photos": 284,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 525,
        "earth_date": "2014-01-27",
        "total_photos": 21,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 526,
        "earth_date": "2014-01-28",
        "total_photos": 292,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 527,
        "earth_date": "2014-01-29",
        "total_photos": 410,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 528,
        "earth_date": "2014-01-30",
        "total_photos": 339,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 529,
        "earth_date": "2014-01-31",
        "total_photos": 371,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 530,
        "earth_date": "2014-02-01",
        "total_photos": 372,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 531,
        "earth_date": "2014-02-02",
        "total_photos": 244,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 532,
        "earth_date": "2014-02-03",
        "total_photos": 151,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 533,
        "earth_date": "2014-02-04",
        "total_photos": 230,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 534,
        "earth_date": "2014-02-05",
        "total_photos": 26,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 535,
        "earth_date": "2014-02-06",
        "total_photos": 135,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 537,
        "earth_date": "2014-02-08",
        "total_photos": 150,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 538,
        "earth_date": "2014-02-09",
        "total_photos": 377,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 539,
        "earth_date": "2014-02-10",
        "total_photos": 42,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 540,
        "earth_date": "2014-02-11",
        "total_photos": 1108,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 541,
        "earth_date": "2014-02-12",
        "total_photos": 286,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 542,
        "earth_date": "2014-02-13",
        "total_photos": 431,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 543,
        "earth_date": "2014-02-14",
        "total_photos": 196,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 544,
        "earth_date": "2014-02-15",
        "total_photos": 195,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 545,
        "earth_date": "2014-02-16",
        "total_photos": 115,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 546,
        "earth_date": "2014-02-18",
        "total_photos": 232,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 547,
        "earth_date": "2014-02-19",
        "total_photos": 305,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 548,
        "earth_date": "2014-02-20",
        "total_photos": 322,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 549,
        "earth_date": "2014-02-21",
        "total_photos": 292,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 550,
        "earth_date": "2014-02-22",
        "total_photos": 481,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 551,
        "earth_date": "2014-02-23",
        "total_photos": 563,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 552,
        "earth_date": "2014-02-24",
        "total_photos": 261,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 553,
        "earth_date": "2014-02-25",
        "total_photos": 314,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 554,
        "earth_date": "2014-02-26",
        "total_photos": 389,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 555,
        "earth_date": "2014-02-27",
        "total_photos": 248,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 556,
        "earth_date": "2014-02-28",
        "total_photos": 2,
        "cameras": [
          "MARDI"
        ]
      },
      {
        "sol": 558,
        "earth_date": "2014-03-02",
        "total_photos": 86,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 559,
        "earth_date": "2014-03-03",
        "total_photos": 212,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 560,
        "earth_date": "2014-03-04",
        "total_photos": 248,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 561,
        "earth_date": "2014-03-05",
        "total_photos": 174,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 562,
        "earth_date": "2014-03-06",
        "total_photos": 167,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 563,
        "earth_date": "2014-03-07",
        "total_photos": 474,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 564,
        "earth_date": "2014-03-08",
        "total_photos": 280,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 565,
        "earth_date": "2014-03-09",
        "total_photos": 240,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 566,
        "earth_date": "2014-03-10",
        "total_photos": 220,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 567,
        "earth_date": "2014-03-11",
        "total_photos": 155,
        "cameras": [
          "CHEMCAM",
          "MAST"
        ]
      },
      {
        "sol": 568,
        "earth_date": "2014-03-12",
        "total_photos": 322,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 569,
        "earth_date": "2014-03-13",
        "total_photos": 294,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 571,
        "earth_date": "2014-03-15",
        "total_photos": 682,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 572,
        "earth_date": "2014-03-16",
        "total_photos": 225,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 573,
        "earth_date": "2014-03-17",
        "total_photos": 17,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 574,
        "earth_date": "2014-03-18",
        "total_photos": 304,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 575,
        "earth_date": "2014-03-19",
        "total_photos": 58,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 576,
        "earth_date": "2014-03-20",
        "total_photos": 130,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 578,
        "earth_date": "2014-03-22",
        "total_photos": 166,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 579,
        "earth_date": "2014-03-23",
        "total_photos": 127,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 580,
        "earth_date": "2014-03-24",
        "total_photos": 1255,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 581,
        "earth_date": "2014-03-25",
        "total_photos": 210,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 582,
        "earth_date": "2014-03-26",
        "total_photos": 374,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 583,
        "earth_date": "2014-03-28",
        "total_photos": 395,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 584,
        "earth_date": "2014-03-29",
        "total_photos": 448,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 585,
        "earth_date": "2014-03-30",
        "total_photos": 653,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 586,
        "earth_date": "2014-03-31",
        "total_photos": 215,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 587,
        "earth_date": "2014-04-01",
        "total_photos": 287,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 588,
        "earth_date": "2014-04-02",
        "total_photos": 460,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 589,
        "earth_date": "2014-04-03",
        "total_photos": 155,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 590,
        "earth_date": "2014-04-04",
        "total_photos": 777,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 591,
        "earth_date": "2014-04-05",
        "total_photos": 174,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 592,
        "earth_date": "2014-04-06",
        "total_photos": 308,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 593,
        "earth_date": "2014-04-07",
        "total_photos": 374,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 594,
        "earth_date": "2014-04-08",
        "total_photos": 141,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 595,
        "earth_date": "2014-04-09",
        "total_photos": 724,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 597,
        "earth_date": "2014-04-11",
        "total_photos": 213,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 601,
        "earth_date": "2014-04-15",
        "total_photos": 446,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 602,
        "earth_date": "2014-04-16",
        "total_photos": 151,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 603,
        "earth_date": "2014-04-17",
        "total_photos": 406,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 604,
        "earth_date": "2014-04-18",
        "total_photos": 172,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 605,
        "earth_date": "2014-04-19",
        "total_photos": 118,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 606,
        "earth_date": "2014-04-20",
        "total_photos": 408,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 607,
        "earth_date": "2014-04-21",
        "total_photos": 37,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 608,
        "earth_date": "2014-04-22",
        "total_photos": 156,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 609,
        "earth_date": "2014-04-23",
        "total_photos": 167,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 610,
        "earth_date": "2014-04-24",
        "total_photos": 519,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 611,
        "earth_date": "2014-04-25",
        "total_photos": 147,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 612,
        "earth_date": "2014-04-26",
        "total_photos": 131,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 613,
        "earth_date": "2014-04-27",
        "total_photos": 211,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 614,
        "earth_date": "2014-04-28",
        "total_photos": 155,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 615,
        "earth_date": "2014-04-29",
        "total_photos": 248,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 617,
        "earth_date": "2014-05-01",
        "total_photos": 760,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 618,
        "earth_date": "2014-05-02",
        "total_photos": 578,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 619,
        "earth_date": "2014-05-04",
        "total_photos": 338,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 620,
        "earth_date": "2014-05-05",
        "total_photos": 728,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 621,
        "earth_date": "2014-05-06",
        "total_photos": 161,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 622,
        "earth_date": "2014-05-07",
        "total_photos": 24,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 623,
        "earth_date": "2014-05-08",
        "total_photos": 18,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 624,
        "earth_date": "2014-05-09",
        "total_photos": 42,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 626,
        "earth_date": "2014-05-11",
        "total_photos": 129,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 627,
        "earth_date": "2014-05-12",
        "total_photos": 224,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 628,
        "earth_date": "2014-05-13",
        "total_photos": 193,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 629,
        "earth_date": "2014-05-14",
        "total_photos": 74,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 630,
        "earth_date": "2014-05-15",
        "total_photos": 144,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 631,
        "earth_date": "2014-05-16",
        "total_photos": 749,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 632,
        "earth_date": "2014-05-17",
        "total_photos": 164,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 633,
        "earth_date": "2014-05-18",
        "total_photos": 108,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 634,
        "earth_date": "2014-05-19",
        "total_photos": 254,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 635,
        "earth_date": "2014-05-20",
        "total_photos": 379,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 636,
        "earth_date": "2014-05-21",
        "total_photos": 144,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 637,
        "earth_date": "2014-05-22",
        "total_photos": 238,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 638,
        "earth_date": "2014-05-23",
        "total_photos": 50,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 639,
        "earth_date": "2014-05-24",
        "total_photos": 59,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 640,
        "earth_date": "2014-05-25",
        "total_photos": 367,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 641,
        "earth_date": "2014-05-26",
        "total_photos": 235,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 642,
        "earth_date": "2014-05-27",
        "total_photos": 16,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 643,
        "earth_date": "2014-05-28",
        "total_photos": 238,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 644,
        "earth_date": "2014-05-29",
        "total_photos": 126,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 645,
        "earth_date": "2014-05-30",
        "total_photos": 41,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 646,
        "earth_date": "2014-05-31",
        "total_photos": 340,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 647,
        "earth_date": "2014-06-01",
        "total_photos": 373,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 648,
        "earth_date": "2014-06-02",
        "total_photos": 38,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 649,
        "earth_date": "2014-06-03",
        "total_photos": 152,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 650,
        "earth_date": "2014-06-04",
        "total_photos": 108,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 651,
        "earth_date": "2014-06-05",
        "total_photos": 723,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 652,
        "earth_date": "2014-06-06",
        "total_photos": 25,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 653,
        "earth_date": "2014-06-07",
        "total_photos": 54,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 654,
        "earth_date": "2014-06-08",
        "total_photos": 79,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 655,
        "earth_date": "2014-06-10",
        "total_photos": 205,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 656,
        "earth_date": "2014-06-11",
        "total_photos": 303,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 657,
        "earth_date": "2014-06-12",
        "total_photos": 204,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 658,
        "earth_date": "2014-06-13",
        "total_photos": 263,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 659,
        "earth_date": "2014-06-14",
        "total_photos": 329,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 660,
        "earth_date": "2014-06-15",
        "total_photos": 118,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 661,
        "earth_date": "2014-06-16",
        "total_photos": 321,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 662,
        "earth_date": "2014-06-17",
        "total_photos": 307,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 663,
        "earth_date": "2014-06-18",
        "total_photos": 477,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 664,
        "earth_date": "2014-06-19",
        "total_photos": 259,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 665,
        "earth_date": "2014-06-20",
        "total_photos": 477,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 666,
        "earth_date": "2014-06-21",
        "total_photos": 88,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 667,
        "earth_date": "2014-06-22",
        "total_photos": 112,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 668,
        "earth_date": "2014-06-23",
        "total_photos": 346,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 669,
        "earth_date": "2014-06-24",
        "total_photos": 240,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 670,
        "earth_date": "2014-06-25",
        "total_photos": 438,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 671,
        "earth_date": "2014-06-26",
        "total_photos": 196,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 672,
        "earth_date": "2014-06-27",
        "total_photos": 201,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 673,
        "earth_date": "2014-06-28",
        "total_photos": 334,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 674,
        "earth_date": "2014-06-29",
        "total_photos": 151,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 675,
        "earth_date": "2014-06-30",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 676,
        "earth_date": "2014-07-01",
        "total_photos": 246,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 677,
        "earth_date": "2014-07-02",
        "total_photos": 176,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 678,
        "earth_date": "2014-07-03",
        "total_photos": 318,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 679,
        "earth_date": "2014-07-04",
        "total_photos": 284,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 683,
        "earth_date": "2014-07-08",
        "total_photos": 465,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 684,
        "earth_date": "2014-07-09",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 685,
        "earth_date": "2014-07-10",
        "total_photos": 330,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 686,
        "earth_date": "2014-07-11",
        "total_photos": 108,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 687,
        "earth_date": "2014-07-12",
        "total_photos": 182,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 688,
        "earth_date": "2014-07-13",
        "total_photos": 223,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 689,
        "earth_date": "2014-07-14",
        "total_photos": 128,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 690,
        "earth_date": "2014-07-15",
        "total_photos": 181,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 691,
        "earth_date": "2014-07-16",
        "total_photos": 557,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 692,
        "earth_date": "2014-07-18",
        "total_photos": 222,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 694,
        "earth_date": "2014-07-20",
        "total_photos": 138,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 695,
        "earth_date": "2014-07-21",
        "total_photos": 172,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 696,
        "earth_date": "2014-07-22",
        "total_photos": 686,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 699,
        "earth_date": "2014-07-25",
        "total_photos": 4,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 700,
        "earth_date": "2014-07-26",
        "total_photos": 30,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 701,
        "earth_date": "2014-07-27",
        "total_photos": 85,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 702,
        "earth_date": "2014-07-28",
        "total_photos": 126,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 703,
        "earth_date": "2014-07-29",
        "total_photos": 885,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 704,
        "earth_date": "2014-07-30",
        "total_photos": 217,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 705,
        "earth_date": "2014-07-31",
        "total_photos": 226,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 706,
        "earth_date": "2014-08-01",
        "total_photos": 255,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 707,
        "earth_date": "2014-08-02",
        "total_photos": 325,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 708,
        "earth_date": "2014-08-03",
        "total_photos": 112,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 709,
        "earth_date": "2014-08-04",
        "total_photos": 148,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 710,
        "earth_date": "2014-08-05",
        "total_photos": 466,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 711,
        "earth_date": "2014-08-06",
        "total_photos": 154,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 712,
        "earth_date": "2014-08-07",
        "total_photos": 226,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 713,
        "earth_date": "2014-08-08",
        "total_photos": 413,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 714,
        "earth_date": "2014-08-09",
        "total_photos": 281,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 717,
        "earth_date": "2014-08-12",
        "total_photos": 427,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 718,
        "earth_date": "2014-08-13",
        "total_photos": 68,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 719,
        "earth_date": "2014-08-14",
        "total_photos": 124,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 720,
        "earth_date": "2014-08-15",
        "total_photos": 288,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 721,
        "earth_date": "2014-08-16",
        "total_photos": 192,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 722,
        "earth_date": "2014-08-17",
        "total_photos": 153,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 723,
        "earth_date": "2014-08-18",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 724,
        "earth_date": "2014-08-19",
        "total_photos": 56,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 725,
        "earth_date": "2014-08-20",
        "total_photos": 278,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 726,
        "earth_date": "2014-08-21",
        "total_photos": 403,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 727,
        "earth_date": "2014-08-22",
        "total_photos": 120,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 728,
        "earth_date": "2014-08-24",
        "total_photos": 170,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 729,
        "earth_date": "2014-08-25",
        "total_photos": 232,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 730,
        "earth_date": "2014-08-26",
        "total_photos": 38,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 731,
        "earth_date": "2014-08-27",
        "total_photos": 224,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 732,
        "earth_date": "2014-08-28",
        "total_photos": 299,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 733,
        "earth_date": "2014-08-29",
        "total_photos": 440,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 734,
        "earth_date": "2014-08-30",
        "total_photos": 29,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 735,
        "earth_date": "2014-08-31",
        "total_photos": 398,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 738,
        "earth_date": "2014-09-03",
        "total_photos": 214,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 739,
        "earth_date": "2014-09-04",
        "total_photos": 814,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 740,
        "earth_date": "2014-09-05",
        "total_photos": 298,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 741,
        "earth_date": "2014-09-06",
        "total_photos": 549,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 742,
        "earth_date": "2014-09-07",
        "total_photos": 46,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 743,
        "earth_date": "2014-09-08",
        "total_photos": 448,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 744,
        "earth_date": "2014-09-09",
        "total_photos": 656,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 745,
        "earth_date": "2014-09-10",
        "total_photos": 182,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 746,
        "earth_date": "2014-09-11",
        "total_photos": 599,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 747,
        "earth_date": "2014-09-12",
        "total_photos": 840,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 748,
        "earth_date": "2014-09-13",
        "total_photos": 612,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 751,
        "earth_date": "2014-09-16",
        "total_photos": 704,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 752,
        "earth_date": "2014-09-17",
        "total_photos": 472,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 753,
        "earth_date": "2014-09-18",
        "total_photos": 506,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 754,
        "earth_date": "2014-09-19",
        "total_photos": 49,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 755,
        "earth_date": "2014-09-20",
        "total_photos": 129,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 756,
        "earth_date": "2014-09-21",
        "total_photos": 122,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 758,
        "earth_date": "2014-09-23",
        "total_photos": 325,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 759,
        "earth_date": "2014-09-24",
        "total_photos": 205,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 760,
        "earth_date": "2014-09-25",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 761,
        "earth_date": "2014-09-26",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 762,
        "earth_date": "2014-09-27",
        "total_photos": 121,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 763,
        "earth_date": "2014-09-28",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 765,
        "earth_date": "2014-10-01",
        "total_photos": 109,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 766,
        "earth_date": "2014-10-02",
        "total_photos": 100,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 767,
        "earth_date": "2014-10-03",
        "total_photos": 137,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 768,
        "earth_date": "2014-10-04",
        "total_photos": 114,
        "cameras": [
          "MAHLI"
        ]
      },
      {
        "sol": 770,
        "earth_date": "2014-10-06",
        "total_photos": 1,
        "cameras": [
          "FHAZ"
        ]
      },
      {
        "sol": 771,
        "earth_date": "2014-10-07",
        "total_photos": 149,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 772,
        "earth_date": "2014-10-08",
        "total_photos": 80,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 773,
        "earth_date": "2014-10-09",
        "total_photos": 97,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 774,
        "earth_date": "2014-10-10",
        "total_photos": 18,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 775,
        "earth_date": "2014-10-11",
        "total_photos": 28,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 776,
        "earth_date": "2014-10-12",
        "total_photos": 155,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 777,
        "earth_date": "2014-10-13",
        "total_photos": 121,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 778,
        "earth_date": "2014-10-14",
        "total_photos": 351,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 779,
        "earth_date": "2014-10-15",
        "total_photos": 86,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 780,
        "earth_date": "2014-10-16",
        "total_photos": 732,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 781,
        "earth_date": "2014-10-17",
        "total_photos": 234,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 782,
        "earth_date": "2014-10-18",
        "total_photos": 207,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 783,
        "earth_date": "2014-10-19",
        "total_photos": 182,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 784,
        "earth_date": "2014-10-20",
        "total_photos": 32,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 785,
        "earth_date": "2014-10-21",
        "total_photos": 248,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 786,
        "earth_date": "2014-10-22",
        "total_photos": 47,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 787,
        "earth_date": "2014-10-23",
        "total_photos": 497,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 788,
        "earth_date": "2014-10-24",
        "total_photos": 42,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 789,
        "earth_date": "2014-10-25",
        "total_photos": 227,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 790,
        "earth_date": "2014-10-26",
        "total_photos": 222,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 791,
        "earth_date": "2014-10-27",
        "total_photos": 22,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 792,
        "earth_date": "2014-10-28",
        "total_photos": 621,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 793,
        "earth_date": "2014-10-29",
        "total_photos": 168,
        "cameras": [
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 794,
        "earth_date": "2014-10-30",
        "total_photos": 820,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 795,
        "earth_date": "2014-10-31",
        "total_photos": 16,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 796,
        "earth_date": "2014-11-01",
        "total_photos": 301,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 797,
        "earth_date": "2014-11-02",
        "total_photos": 945,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 799,
        "earth_date": "2014-11-04",
        "total_photos": 188,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 800,
        "earth_date": "2014-11-05",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "MARDI",
          "RHAZ"
        ]
      },
      {
        "sol": 801,
        "earth_date": "2014-11-07",
        "total_photos": 149,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 802,
        "earth_date": "2014-11-08",
        "total_photos": 254,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 803,
        "earth_date": "2014-11-09",
        "total_photos": 441,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 804,
        "earth_date": "2014-11-10",
        "total_photos": 18,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 805,
        "earth_date": "2014-11-11",
        "total_photos": 166,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 806,
        "earth_date": "2014-11-12",
        "total_photos": 236,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 807,
        "earth_date": "2014-11-13",
        "total_photos": 251,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 808,
        "earth_date": "2014-11-14",
        "total_photos": 223,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 809,
        "earth_date": "2014-11-15",
        "total_photos": 193,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 810,
        "earth_date": "2014-11-16",
        "total_photos": 143,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 811,
        "earth_date": "2014-11-17",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 812,
        "earth_date": "2014-11-18",
        "total_photos": 250,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 813,
        "earth_date": "2014-11-19",
        "total_photos": 247,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 814,
        "earth_date": "2014-11-20",
        "total_photos": 329,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 815,
        "earth_date": "2014-11-21",
        "total_photos": 210,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 816,
        "earth_date": "2014-11-22",
        "total_photos": 160,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 817,
        "earth_date": "2014-11-23",
        "total_photos": 227,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 818,
        "earth_date": "2014-11-24",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 819,
        "earth_date": "2014-11-25",
        "total_photos": 238,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 820,
        "earth_date": "2014-11-26",
        "total_photos": 52,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 821,
        "earth_date": "2014-11-27",
        "total_photos": 113,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 822,
        "earth_date": "2014-11-28",
        "total_photos": 67,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 823,
        "earth_date": "2014-11-29",
        "total_photos": 46,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 824,
        "earth_date": "2014-11-30",
        "total_photos": 93,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 825,
        "earth_date": "2014-12-01",
        "total_photos": 24,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 826,
        "earth_date": "2014-12-02",
        "total_photos": 285,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 827,
        "earth_date": "2014-12-03",
        "total_photos": 20,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 828,
        "earth_date": "2014-12-04",
        "total_photos": 732,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 829,
        "earth_date": "2014-12-05",
        "total_photos": 14,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 830,
        "earth_date": "2014-12-06",
        "total_photos": 130,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 831,
        "earth_date": "2014-12-07",
        "total_photos": 68,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 832,
        "earth_date": "2014-12-08",
        "total_photos": 203,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 833,
        "earth_date": "2014-12-09",
        "total_photos": 162,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 834,
        "earth_date": "2014-12-10",
        "total_photos": 38,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 835,
        "earth_date": "2014-12-11",
        "total_photos": 219,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 836,
        "earth_date": "2014-12-12",
        "total_photos": 8,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 837,
        "earth_date": "2014-12-14",
        "total_photos": 447,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 838,
        "earth_date": "2014-12-15",
        "total_photos": 92,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 839,
        "earth_date": "2014-12-16",
        "total_photos": 12,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 840,
        "earth_date": "2014-12-17",
        "total_photos": 587,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 842,
        "earth_date": "2014-12-19",
        "total_photos": 209,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 843,
        "earth_date": "2014-12-20",
        "total_photos": 352,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 844,
        "earth_date": "2014-12-21",
        "total_photos": 323,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 845,
        "earth_date": "2014-12-22",
        "total_photos": 71,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 853,
        "earth_date": "2014-12-30",
        "total_photos": 140,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 854,
        "earth_date": "2014-12-31",
        "total_photos": 16,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 855,
        "earth_date": "2015-01-01",
        "total_photos": 228,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 860,
        "earth_date": "2015-01-06",
        "total_photos": 205,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 861,
        "earth_date": "2015-01-07",
        "total_photos": 133,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 862,
        "earth_date": "2015-01-08",
        "total_photos": 317,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 863,
        "earth_date": "2015-01-09",
        "total_photos": 76,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 864,
        "earth_date": "2015-01-10",
        "total_photos": 296,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 865,
        "earth_date": "2015-01-11",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 866,
        "earth_date": "2015-01-12",
        "total_photos": 20,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 867,
        "earth_date": "2015-01-13",
        "total_photos": 149,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 868,
        "earth_date": "2015-01-14",
        "total_photos": 202,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 869,
        "earth_date": "2015-01-15",
        "total_photos": 206,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 871,
        "earth_date": "2015-01-17",
        "total_photos": 84,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 872,
        "earth_date": "2015-01-18",
        "total_photos": 230,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 880,
        "earth_date": "2015-01-27",
        "total_photos": 225,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 881,
        "earth_date": "2015-01-28",
        "total_photos": 118,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 882,
        "earth_date": "2015-01-29",
        "total_photos": 194,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 883,
        "earth_date": "2015-01-30",
        "total_photos": 292,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 884,
        "earth_date": "2015-01-31",
        "total_photos": 52,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 885,
        "earth_date": "2015-02-01",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 886,
        "earth_date": "2015-02-02",
        "total_photos": 192,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 887,
        "earth_date": "2015-02-03",
        "total_photos": 21,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 888,
        "earth_date": "2015-02-04",
        "total_photos": 71,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 889,
        "earth_date": "2015-02-05",
        "total_photos": 183,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 890,
        "earth_date": "2015-02-06",
        "total_photos": 168,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 891,
        "earth_date": "2015-02-07",
        "total_photos": 22,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 892,
        "earth_date": "2015-02-08",
        "total_photos": 127,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 893,
        "earth_date": "2015-02-09",
        "total_photos": 91,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 894,
        "earth_date": "2015-02-10",
        "total_photos": 146,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 895,
        "earth_date": "2015-02-11",
        "total_photos": 193,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 896,
        "earth_date": "2015-02-12",
        "total_photos": 265,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 897,
        "earth_date": "2015-02-13",
        "total_photos": 36,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 898,
        "earth_date": "2015-02-14",
        "total_photos": 260,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 899,
        "earth_date": "2015-02-15",
        "total_photos": 137,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 900,
        "earth_date": "2015-02-16",
        "total_photos": 58,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 901,
        "earth_date": "2015-02-17",
        "total_photos": 396,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 902,
        "earth_date": "2015-02-18",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 903,
        "earth_date": "2015-02-19",
        "total_photos": 200,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 904,
        "earth_date": "2015-02-20",
        "total_photos": 45,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 905,
        "earth_date": "2015-02-21",
        "total_photos": 151,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 906,
        "earth_date": "2015-02-22",
        "total_photos": 120,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 907,
        "earth_date": "2015-02-23",
        "total_photos": 113,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 908,
        "earth_date": "2015-02-24",
        "total_photos": 235,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 909,
        "earth_date": "2015-02-25",
        "total_photos": 162,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 910,
        "earth_date": "2015-02-27",
        "total_photos": 277,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 911,
        "earth_date": "2015-02-28",
        "total_photos": 36,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 914,
        "earth_date": "2015-03-03",
        "total_photos": 246,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 915,
        "earth_date": "2015-03-04",
        "total_photos": 187,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 916,
        "earth_date": "2015-03-05",
        "total_photos": 235,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 917,
        "earth_date": "2015-03-06",
        "total_photos": 308,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 918,
        "earth_date": "2015-03-07",
        "total_photos": 196,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 919,
        "earth_date": "2015-03-08",
        "total_photos": 264,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 920,
        "earth_date": "2015-03-09",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 921,
        "earth_date": "2015-03-10",
        "total_photos": 364,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 922,
        "earth_date": "2015-03-11",
        "total_photos": 82,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 923,
        "earth_date": "2015-03-12",
        "total_photos": 107,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 924,
        "earth_date": "2015-03-13",
        "total_photos": 205,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 925,
        "earth_date": "2015-03-14",
        "total_photos": 177,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 926,
        "earth_date": "2015-03-15",
        "total_photos": 170,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 927,
        "earth_date": "2015-03-16",
        "total_photos": 42,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 928,
        "earth_date": "2015-03-17",
        "total_photos": 22,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 929,
        "earth_date": "2015-03-18",
        "total_photos": 295,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 930,
        "earth_date": "2015-03-19",
        "total_photos": 337,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 931,
        "earth_date": "2015-03-20",
        "total_photos": 137,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 932,
        "earth_date": "2015-03-21",
        "total_photos": 16,
        "cameras": [
          "MAHLI"
        ]
      },
      {
        "sol": 935,
        "earth_date": "2015-03-24",
        "total_photos": 403,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 936,
        "earth_date": "2015-03-25",
        "total_photos": 141,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 937,
        "earth_date": "2015-03-26",
        "total_photos": 228,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 938,
        "earth_date": "2015-03-27",
        "total_photos": 445,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 939,
        "earth_date": "2015-03-28",
        "total_photos": 321,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 940,
        "earth_date": "2015-03-29",
        "total_photos": 238,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 941,
        "earth_date": "2015-03-30",
        "total_photos": 104,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 942,
        "earth_date": "2015-03-31",
        "total_photos": 229,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 943,
        "earth_date": "2015-04-01",
        "total_photos": 275,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 944,
        "earth_date": "2015-04-02",
        "total_photos": 234,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 945,
        "earth_date": "2015-04-03",
        "total_photos": 81,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 946,
        "earth_date": "2015-04-05",
        "total_photos": 469,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 947,
        "earth_date": "2015-04-06",
        "total_photos": 150,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 948,
        "earth_date": "2015-04-07",
        "total_photos": 419,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 949,
        "earth_date": "2015-04-08",
        "total_photos": 214,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 950,
        "earth_date": "2015-04-09",
        "total_photos": 385,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 951,
        "earth_date": "2015-04-10",
        "total_photos": 281,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 952,
        "earth_date": "2015-04-11",
        "total_photos": 831,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 953,
        "earth_date": "2015-04-12",
        "total_photos": 412,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 954,
        "earth_date": "2015-04-13",
        "total_photos": 159,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 955,
        "earth_date": "2015-04-14",
        "total_photos": 235,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 956,
        "earth_date": "2015-04-15",
        "total_photos": 229,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 957,
        "earth_date": "2015-04-16",
        "total_photos": 453,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 958,
        "earth_date": "2015-04-17",
        "total_photos": 350,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 959,
        "earth_date": "2015-04-18",
        "total_photos": 569,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 960,
        "earth_date": "2015-04-19",
        "total_photos": 517,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 961,
        "earth_date": "2015-04-20",
        "total_photos": 72,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 962,
        "earth_date": "2015-04-21",
        "total_photos": 364,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 963,
        "earth_date": "2015-04-22",
        "total_photos": 170,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 964,
        "earth_date": "2015-04-23",
        "total_photos": 510,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 965,
        "earth_date": "2015-04-24",
        "total_photos": 16,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 966,
        "earth_date": "2015-04-25",
        "total_photos": 155,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 967,
        "earth_date": "2015-04-26",
        "total_photos": 258,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 968,
        "earth_date": "2015-04-27",
        "total_photos": 65,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 969,
        "earth_date": "2015-04-28",
        "total_photos": 688,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 970,
        "earth_date": "2015-04-29",
        "total_photos": 290,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 971,
        "earth_date": "2015-04-30",
        "total_photos": 193,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 972,
        "earth_date": "2015-05-01",
        "total_photos": 34,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 973,
        "earth_date": "2015-05-02",
        "total_photos": 112,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 974,
        "earth_date": "2015-05-03",
        "total_photos": 172,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 975,
        "earth_date": "2015-05-04",
        "total_photos": 138,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 976,
        "earth_date": "2015-05-05",
        "total_photos": 611,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 977,
        "earth_date": "2015-05-06",
        "total_photos": 89,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 978,
        "earth_date": "2015-05-07",
        "total_photos": 309,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 979,
        "earth_date": "2015-05-08",
        "total_photos": 166,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 980,
        "earth_date": "2015-05-09",
        "total_photos": 106,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 981,
        "earth_date": "2015-05-10",
        "total_photos": 198,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 982,
        "earth_date": "2015-05-11",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 983,
        "earth_date": "2015-05-13",
        "total_photos": 199,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 984,
        "earth_date": "2015-05-14",
        "total_photos": 260,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 985,
        "earth_date": "2015-05-15",
        "total_photos": 180,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 986,
        "earth_date": "2015-05-16",
        "total_photos": 327,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 987,
        "earth_date": "2015-05-17",
        "total_photos": 321,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 988,
        "earth_date": "2015-05-18",
        "total_photos": 25,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 989,
        "earth_date": "2015-05-19",
        "total_photos": 172,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 990,
        "earth_date": "2015-05-20",
        "total_photos": 328,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 991,
        "earth_date": "2015-05-21",
        "total_photos": 384,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 992,
        "earth_date": "2015-05-22",
        "total_photos": 456,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 993,
        "earth_date": "2015-05-23",
        "total_photos": 866,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 994,
        "earth_date": "2015-05-24",
        "total_photos": 180,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 995,
        "earth_date": "2015-05-25",
        "total_photos": 431,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 996,
        "earth_date": "2015-05-26",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 997,
        "earth_date": "2015-05-27",
        "total_photos": 249,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 998,
        "earth_date": "2015-05-28",
        "total_photos": 467,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 999,
        "earth_date": "2015-05-29",
        "total_photos": 280,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1000,
        "earth_date": "2015-05-30",
        "total_photos": 856,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1001,
        "earth_date": "2015-05-31",
        "total_photos": 286,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1002,
        "earth_date": "2015-06-01",
        "total_photos": 186,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1003,
        "earth_date": "2015-06-02",
        "total_photos": 392,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1004,
        "earth_date": "2015-06-03",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1027,
        "earth_date": "2015-06-27",
        "total_photos": 72,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1028,
        "earth_date": "2015-06-28",
        "total_photos": 114,
        "cameras": [
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1029,
        "earth_date": "2015-06-29",
        "total_photos": 106,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1030,
        "earth_date": "2015-06-30",
        "total_photos": 208,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1031,
        "earth_date": "2015-07-01",
        "total_photos": 244,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1032,
        "earth_date": "2015-07-02",
        "total_photos": 678,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1033,
        "earth_date": "2015-07-03",
        "total_photos": 471,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1034,
        "earth_date": "2015-07-04",
        "total_photos": 240,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1035,
        "earth_date": "2015-07-05",
        "total_photos": 248,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1036,
        "earth_date": "2015-07-06",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1037,
        "earth_date": "2015-07-07",
        "total_photos": 273,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1038,
        "earth_date": "2015-07-08",
        "total_photos": 20,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1039,
        "earth_date": "2015-07-09",
        "total_photos": 225,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1040,
        "earth_date": "2015-07-10",
        "total_photos": 28,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1041,
        "earth_date": "2015-07-11",
        "total_photos": 220,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1042,
        "earth_date": "2015-07-12",
        "total_photos": 168,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1043,
        "earth_date": "2015-07-13",
        "total_photos": 22,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1044,
        "earth_date": "2015-07-14",
        "total_photos": 529,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1045,
        "earth_date": "2015-07-15",
        "total_photos": 30,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1046,
        "earth_date": "2015-07-16",
        "total_photos": 150,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1047,
        "earth_date": "2015-07-17",
        "total_photos": 87,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1048,
        "earth_date": "2015-07-18",
        "total_photos": 142,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1049,
        "earth_date": "2015-07-19",
        "total_photos": 321,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1050,
        "earth_date": "2015-07-20",
        "total_photos": 20,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1051,
        "earth_date": "2015-07-21",
        "total_photos": 217,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1052,
        "earth_date": "2015-07-22",
        "total_photos": 40,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1053,
        "earth_date": "2015-07-23",
        "total_photos": 143,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1054,
        "earth_date": "2015-07-24",
        "total_photos": 34,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1055,
        "earth_date": "2015-07-26",
        "total_photos": 46,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1056,
        "earth_date": "2015-07-27",
        "total_photos": 122,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1057,
        "earth_date": "2015-07-28",
        "total_photos": 257,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1058,
        "earth_date": "2015-07-29",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "MARDI",
          "RHAZ"
        ]
      },
      {
        "sol": 1059,
        "earth_date": "2015-07-30",
        "total_photos": 175,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1060,
        "earth_date": "2015-07-31",
        "total_photos": 161,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1061,
        "earth_date": "2015-08-01",
        "total_photos": 44,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1062,
        "earth_date": "2015-08-02",
        "total_photos": 117,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1063,
        "earth_date": "2015-08-03",
        "total_photos": 329,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1064,
        "earth_date": "2015-08-04",
        "total_photos": 213,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1065,
        "earth_date": "2015-08-05",
        "total_photos": 521,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1066,
        "earth_date": "2015-08-06",
        "total_photos": 224,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1067,
        "earth_date": "2015-08-07",
        "total_photos": 165,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1071,
        "earth_date": "2015-08-11",
        "total_photos": 58,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1072,
        "earth_date": "2015-08-12",
        "total_photos": 231,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1073,
        "earth_date": "2015-08-13",
        "total_photos": 569,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1074,
        "earth_date": "2015-08-14",
        "total_photos": 284,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1075,
        "earth_date": "2015-08-15",
        "total_photos": 18,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1076,
        "earth_date": "2015-08-16",
        "total_photos": 107,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1077,
        "earth_date": "2015-08-17",
        "total_photos": 393,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1078,
        "earth_date": "2015-08-18",
        "total_photos": 164,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1079,
        "earth_date": "2015-08-19",
        "total_photos": 78,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1080,
        "earth_date": "2015-08-20",
        "total_photos": 281,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1081,
        "earth_date": "2015-08-21",
        "total_photos": 452,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1082,
        "earth_date": "2015-08-22",
        "total_photos": 935,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1083,
        "earth_date": "2015-08-23",
        "total_photos": 153,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1084,
        "earth_date": "2015-08-24",
        "total_photos": 27,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1085,
        "earth_date": "2015-08-25",
        "total_photos": 335,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1086,
        "earth_date": "2015-08-26",
        "total_photos": 26,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1087,
        "earth_date": "2015-08-27",
        "total_photos": 831,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1088,
        "earth_date": "2015-08-28",
        "total_photos": 44,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1089,
        "earth_date": "2015-08-29",
        "total_photos": 218,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1090,
        "earth_date": "2015-08-30",
        "total_photos": 277,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1091,
        "earth_date": "2015-08-31",
        "total_photos": 154,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1092,
        "earth_date": "2015-09-02",
        "total_photos": 558,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1093,
        "earth_date": "2015-09-03",
        "total_photos": 199,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1094,
        "earth_date": "2015-09-04",
        "total_photos": 249,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1095,
        "earth_date": "2015-09-05",
        "total_photos": 176,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1096,
        "earth_date": "2015-09-06",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1097,
        "earth_date": "2015-09-07",
        "total_photos": 170,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1098,
        "earth_date": "2015-09-08",
        "total_photos": 149,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1099,
        "earth_date": "2015-09-09",
        "total_photos": 313,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1100,
        "earth_date": "2015-09-10",
        "total_photos": 1041,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1101,
        "earth_date": "2015-09-11",
        "total_photos": 311,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1102,
        "earth_date": "2015-09-12",
        "total_photos": 56,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1103,
        "earth_date": "2015-09-13",
        "total_photos": 75,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1104,
        "earth_date": "2015-09-14",
        "total_photos": 387,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1105,
        "earth_date": "2015-09-15",
        "total_photos": 318,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1106,
        "earth_date": "2015-09-16",
        "total_photos": 412,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1107,
        "earth_date": "2015-09-17",
        "total_photos": 219,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1108,
        "earth_date": "2015-09-18",
        "total_photos": 121,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1109,
        "earth_date": "2015-09-19",
        "total_photos": 162,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1110,
        "earth_date": "2015-09-20",
        "total_photos": 394,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1111,
        "earth_date": "2015-09-21",
        "total_photos": 38,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1112,
        "earth_date": "2015-09-22",
        "total_photos": 403,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1113,
        "earth_date": "2015-09-23",
        "total_photos": 47,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1114,
        "earth_date": "2015-09-24",
        "total_photos": 149,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1115,
        "earth_date": "2015-09-25",
        "total_photos": 109,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1116,
        "earth_date": "2015-09-26",
        "total_photos": 78,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1117,
        "earth_date": "2015-09-27",
        "total_photos": 66,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1118,
        "earth_date": "2015-09-28",
        "total_photos": 137,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1119,
        "earth_date": "2015-09-29",
        "total_photos": 159,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1120,
        "earth_date": "2015-09-30",
        "total_photos": 162,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1121,
        "earth_date": "2015-10-01",
        "total_photos": 34,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1122,
        "earth_date": "2015-10-02",
        "total_photos": 46,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1123,
        "earth_date": "2015-10-03",
        "total_photos": 215,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1124,
        "earth_date": "2015-10-04",
        "total_photos": 102,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1125,
        "earth_date": "2015-10-05",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1126,
        "earth_date": "2015-10-06",
        "total_photos": 261,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1127,
        "earth_date": "2015-10-07",
        "total_photos": 212,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1128,
        "earth_date": "2015-10-09",
        "total_photos": 137,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1129,
        "earth_date": "2015-10-10",
        "total_photos": 54,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1130,
        "earth_date": "2015-10-11",
        "total_photos": 107,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1131,
        "earth_date": "2015-10-12",
        "total_photos": 16,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1132,
        "earth_date": "2015-10-13",
        "total_photos": 113,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1133,
        "earth_date": "2015-10-14",
        "total_photos": 259,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1134,
        "earth_date": "2015-10-15",
        "total_photos": 86,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1136,
        "earth_date": "2015-10-17",
        "total_photos": 135,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1137,
        "earth_date": "2015-10-18",
        "total_photos": 150,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1138,
        "earth_date": "2015-10-19",
        "total_photos": 206,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1139,
        "earth_date": "2015-10-20",
        "total_photos": 126,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1140,
        "earth_date": "2015-10-21",
        "total_photos": 108,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1141,
        "earth_date": "2015-10-22",
        "total_photos": 68,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1142,
        "earth_date": "2015-10-23",
        "total_photos": 278,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1143,
        "earth_date": "2015-10-24",
        "total_photos": 102,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1144,
        "earth_date": "2015-10-25",
        "total_photos": 577,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1146,
        "earth_date": "2015-10-27",
        "total_photos": 347,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1147,
        "earth_date": "2015-10-28",
        "total_photos": 14,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1148,
        "earth_date": "2015-10-29",
        "total_photos": 328,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1149,
        "earth_date": "2015-10-30",
        "total_photos": 52,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1150,
        "earth_date": "2015-10-31",
        "total_photos": 349,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1151,
        "earth_date": "2015-11-01",
        "total_photos": 184,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1152,
        "earth_date": "2015-11-02",
        "total_photos": 30,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1153,
        "earth_date": "2015-11-03",
        "total_photos": 197,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1154,
        "earth_date": "2015-11-04",
        "total_photos": 185,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1155,
        "earth_date": "2015-11-05",
        "total_photos": 347,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1156,
        "earth_date": "2015-11-06",
        "total_photos": 22,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1157,
        "earth_date": "2015-11-07",
        "total_photos": 334,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1158,
        "earth_date": "2015-11-08",
        "total_photos": 240,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1159,
        "earth_date": "2015-11-09",
        "total_photos": 23,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1160,
        "earth_date": "2015-11-10",
        "total_photos": 598,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1161,
        "earth_date": "2015-11-11",
        "total_photos": 32,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1162,
        "earth_date": "2015-11-12",
        "total_photos": 408,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1163,
        "earth_date": "2015-11-13",
        "total_photos": 454,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1166,
        "earth_date": "2015-11-17",
        "total_photos": 245,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1167,
        "earth_date": "2015-11-18",
        "total_photos": 321,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1168,
        "earth_date": "2015-11-19",
        "total_photos": 202,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1169,
        "earth_date": "2015-11-20",
        "total_photos": 95,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1170,
        "earth_date": "2015-11-21",
        "total_photos": 14,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1171,
        "earth_date": "2015-11-22",
        "total_photos": 106,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1172,
        "earth_date": "2015-11-23",
        "total_photos": 148,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1173,
        "earth_date": "2015-11-24",
        "total_photos": 382,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1174,
        "earth_date": "2015-11-25",
        "total_photos": 199,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1175,
        "earth_date": "2015-11-26",
        "total_photos": 23,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1176,
        "earth_date": "2015-11-27",
        "total_photos": 156,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1177,
        "earth_date": "2015-11-28",
        "total_photos": 36,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1178,
        "earth_date": "2015-11-29",
        "total_photos": 63,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1179,
        "earth_date": "2015-11-30",
        "total_photos": 148,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1181,
        "earth_date": "2015-12-02",
        "total_photos": 699,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1182,
        "earth_date": "2015-12-03",
        "total_photos": 483,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1183,
        "earth_date": "2015-12-04",
        "total_photos": 313,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1184,
        "earth_date": "2015-12-05",
        "total_photos": 425,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1185,
        "earth_date": "2015-12-06",
        "total_photos": 283,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1186,
        "earth_date": "2015-12-07",
        "total_photos": 32,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 1187,
        "earth_date": "2015-12-08",
        "total_photos": 319,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1188,
        "earth_date": "2015-12-09",
        "total_photos": 43,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1189,
        "earth_date": "2015-12-10",
        "total_photos": 195,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1190,
        "earth_date": "2015-12-11",
        "total_photos": 275,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1191,
        "earth_date": "2015-12-12",
        "total_photos": 154,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1192,
        "earth_date": "2015-12-13",
        "total_photos": 249,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1193,
        "earth_date": "2015-12-14",
        "total_photos": 62,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1194,
        "earth_date": "2015-12-15",
        "total_photos": 316,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1195,
        "earth_date": "2015-12-16",
        "total_photos": 30,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1196,
        "earth_date": "2015-12-17",
        "total_photos": 253,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1197,
        "earth_date": "2015-12-18",
        "total_photos": 589,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1198,
        "earth_date": "2015-12-19",
        "total_photos": 136,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1199,
        "earth_date": "2015-12-20",
        "total_photos": 61,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1200,
        "earth_date": "2015-12-21",
        "total_photos": 219,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1201,
        "earth_date": "2015-12-23",
        "total_photos": 235,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1202,
        "earth_date": "2015-12-24",
        "total_photos": 384,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1203,
        "earth_date": "2015-12-25",
        "total_photos": 124,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1204,
        "earth_date": "2015-12-26",
        "total_photos": 184,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1205,
        "earth_date": "2015-12-27",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1206,
        "earth_date": "2015-12-28",
        "total_photos": 128,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1207,
        "earth_date": "2015-12-29",
        "total_photos": 48,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1208,
        "earth_date": "2015-12-30",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1209,
        "earth_date": "2015-12-31",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1210,
        "earth_date": "2016-01-01",
        "total_photos": 163,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1211,
        "earth_date": "2016-01-02",
        "total_photos": 54,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1212,
        "earth_date": "2016-01-03",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1213,
        "earth_date": "2016-01-04",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1214,
        "earth_date": "2016-01-05",
        "total_photos": 142,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1215,
        "earth_date": "2016-01-06",
        "total_photos": 262,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1216,
        "earth_date": "2016-01-07",
        "total_photos": 229,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1217,
        "earth_date": "2016-01-08",
        "total_photos": 16,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1219,
        "earth_date": "2016-01-10",
        "total_photos": 63,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1220,
        "earth_date": "2016-01-11",
        "total_photos": 9,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1221,
        "earth_date": "2016-01-12",
        "total_photos": 522,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1222,
        "earth_date": "2016-01-13",
        "total_photos": 124,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1223,
        "earth_date": "2016-01-14",
        "total_photos": 130,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1224,
        "earth_date": "2016-01-15",
        "total_photos": 76,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1225,
        "earth_date": "2016-01-16",
        "total_photos": 53,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1226,
        "earth_date": "2016-01-17",
        "total_photos": 180,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1227,
        "earth_date": "2016-01-18",
        "total_photos": 41,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1228,
        "earth_date": "2016-01-19",
        "total_photos": 346,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1229,
        "earth_date": "2016-01-20",
        "total_photos": 271,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1230,
        "earth_date": "2016-01-21",
        "total_photos": 132,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1231,
        "earth_date": "2016-01-22",
        "total_photos": 101,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1232,
        "earth_date": "2016-01-23",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1233,
        "earth_date": "2016-01-24",
        "total_photos": 114,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1234,
        "earth_date": "2016-01-25",
        "total_photos": 254,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1235,
        "earth_date": "2016-01-26",
        "total_photos": 111,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1236,
        "earth_date": "2016-01-27",
        "total_photos": 67,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1237,
        "earth_date": "2016-01-29",
        "total_photos": 98,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1238,
        "earth_date": "2016-01-30",
        "total_photos": 46,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1239,
        "earth_date": "2016-01-31",
        "total_photos": 81,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1240,
        "earth_date": "2016-02-01",
        "total_photos": 61,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1241,
        "earth_date": "2016-02-02",
        "total_photos": 201,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1242,
        "earth_date": "2016-02-03",
        "total_photos": 210,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1243,
        "earth_date": "2016-02-04",
        "total_photos": 161,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1244,
        "earth_date": "2016-02-05",
        "total_photos": 178,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1245,
        "earth_date": "2016-02-06",
        "total_photos": 133,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1246,
        "earth_date": "2016-02-07",
        "total_photos": 215,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1247,
        "earth_date": "2016-02-08",
        "total_photos": 81,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1248,
        "earth_date": "2016-02-09",
        "total_photos": 203,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1249,
        "earth_date": "2016-02-10",
        "total_photos": 261,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1250,
        "earth_date": "2016-02-11",
        "total_photos": 151,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1251,
        "earth_date": "2016-02-12",
        "total_photos": 64,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1252,
        "earth_date": "2016-02-13",
        "total_photos": 147,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1253,
        "earth_date": "2016-02-14",
        "total_photos": 241,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1254,
        "earth_date": "2016-02-15",
        "total_photos": 166,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1255,
        "earth_date": "2016-02-16",
        "total_photos": 135,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1256,
        "earth_date": "2016-02-17",
        "total_photos": 172,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1257,
        "earth_date": "2016-02-18",
        "total_photos": 121,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1258,
        "earth_date": "2016-02-19",
        "total_photos": 77,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1259,
        "earth_date": "2016-02-20",
        "total_photos": 188,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1260,
        "earth_date": "2016-02-21",
        "total_photos": 261,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1261,
        "earth_date": "2016-02-22",
        "total_photos": 105,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1262,
        "earth_date": "2016-02-23",
        "total_photos": 364,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1263,
        "earth_date": "2016-02-24",
        "total_photos": 94,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1264,
        "earth_date": "2016-02-25",
        "total_photos": 256,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1265,
        "earth_date": "2016-02-26",
        "total_photos": 48,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1266,
        "earth_date": "2016-02-27",
        "total_photos": 151,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1267,
        "earth_date": "2016-02-28",
        "total_photos": 370,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1268,
        "earth_date": "2016-02-29",
        "total_photos": 105,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1269,
        "earth_date": "2016-03-01",
        "total_photos": 206,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1270,
        "earth_date": "2016-03-02",
        "total_photos": 198,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1271,
        "earth_date": "2016-03-03",
        "total_photos": 75,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1272,
        "earth_date": "2016-03-04",
        "total_photos": 548,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1273,
        "earth_date": "2016-03-05",
        "total_photos": 282,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1274,
        "earth_date": "2016-03-07",
        "total_photos": 377,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1275,
        "earth_date": "2016-03-08",
        "total_photos": 696,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1276,
        "earth_date": "2016-03-09",
        "total_photos": 345,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1277,
        "earth_date": "2016-03-10",
        "total_photos": 279,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1278,
        "earth_date": "2016-03-11",
        "total_photos": 468,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1279,
        "earth_date": "2016-03-12",
        "total_photos": 117,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 1280,
        "earth_date": "2016-03-13",
        "total_photos": 177,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1281,
        "earth_date": "2016-03-14",
        "total_photos": 281,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1282,
        "earth_date": "2016-03-15",
        "total_photos": 596,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1283,
        "earth_date": "2016-03-16",
        "total_photos": 302,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1284,
        "earth_date": "2016-03-17",
        "total_photos": 339,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1285,
        "earth_date": "2016-03-18",
        "total_photos": 228,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1286,
        "earth_date": "2016-03-19",
        "total_photos": 261,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1287,
        "earth_date": "2016-03-20",
        "total_photos": 145,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1288,
        "earth_date": "2016-03-21",
        "total_photos": 89,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1289,
        "earth_date": "2016-03-22",
        "total_photos": 208,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1290,
        "earth_date": "2016-03-23",
        "total_photos": 466,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1291,
        "earth_date": "2016-03-24",
        "total_photos": 59,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1292,
        "earth_date": "2016-03-25",
        "total_photos": 416,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1293,
        "earth_date": "2016-03-26",
        "total_photos": 354,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1294,
        "earth_date": "2016-03-27",
        "total_photos": 221,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1295,
        "earth_date": "2016-03-28",
        "total_photos": 36,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "RHAZ"
        ]
      },
      {
        "sol": 1296,
        "earth_date": "2016-03-29",
        "total_photos": 306,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1297,
        "earth_date": "2016-03-30",
        "total_photos": 47,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1298,
        "earth_date": "2016-03-31",
        "total_photos": 346,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1299,
        "earth_date": "2016-04-01",
        "total_photos": 32,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1300,
        "earth_date": "2016-04-02",
        "total_photos": 167,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1301,
        "earth_date": "2016-04-03",
        "total_photos": 560,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1302,
        "earth_date": "2016-04-04",
        "total_photos": 490,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1303,
        "earth_date": "2016-04-05",
        "total_photos": 147,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1304,
        "earth_date": "2016-04-06",
        "total_photos": 14,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1305,
        "earth_date": "2016-04-07",
        "total_photos": 157,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1306,
        "earth_date": "2016-04-08",
        "total_photos": 74,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1309,
        "earth_date": "2016-04-11",
        "total_photos": 295,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1310,
        "earth_date": "2016-04-13",
        "total_photos": 200,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1311,
        "earth_date": "2016-04-14",
        "total_photos": 209,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1312,
        "earth_date": "2016-04-15",
        "total_photos": 243,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1313,
        "earth_date": "2016-04-16",
        "total_photos": 139,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1314,
        "earth_date": "2016-04-17",
        "total_photos": 201,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1315,
        "earth_date": "2016-04-18",
        "total_photos": 138,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1316,
        "earth_date": "2016-04-19",
        "total_photos": 209,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1317,
        "earth_date": "2016-04-20",
        "total_photos": 183,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1318,
        "earth_date": "2016-04-21",
        "total_photos": 165,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1319,
        "earth_date": "2016-04-22",
        "total_photos": 140,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1320,
        "earth_date": "2016-04-23",
        "total_photos": 76,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1321,
        "earth_date": "2016-04-24",
        "total_photos": 262,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1322,
        "earth_date": "2016-04-25",
        "total_photos": 13,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1323,
        "earth_date": "2016-04-26",
        "total_photos": 51,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1324,
        "earth_date": "2016-04-27",
        "total_photos": 198,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1325,
        "earth_date": "2016-04-28",
        "total_photos": 139,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1326,
        "earth_date": "2016-04-29",
        "total_photos": 388,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1327,
        "earth_date": "2016-04-30",
        "total_photos": 197,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1328,
        "earth_date": "2016-05-01",
        "total_photos": 167,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1329,
        "earth_date": "2016-05-02",
        "total_photos": 178,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1330,
        "earth_date": "2016-05-03",
        "total_photos": 202,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1331,
        "earth_date": "2016-05-04",
        "total_photos": 76,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1332,
        "earth_date": "2016-05-05",
        "total_photos": 162,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1333,
        "earth_date": "2016-05-06",
        "total_photos": 240,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1334,
        "earth_date": "2016-05-07",
        "total_photos": 45,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1335,
        "earth_date": "2016-05-08",
        "total_photos": 22,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1336,
        "earth_date": "2016-05-09",
        "total_photos": 62,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1337,
        "earth_date": "2016-05-10",
        "total_photos": 229,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1338,
        "earth_date": "2016-05-11",
        "total_photos": 276,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1339,
        "earth_date": "2016-05-12",
        "total_photos": 48,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1340,
        "earth_date": "2016-05-13",
        "total_photos": 119,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1341,
        "earth_date": "2016-05-14",
        "total_photos": 263,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1342,
        "earth_date": "2016-05-15",
        "total_photos": 174,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1343,
        "earth_date": "2016-05-16",
        "total_photos": 93,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1344,
        "earth_date": "2016-05-17",
        "total_photos": 373,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1345,
        "earth_date": "2016-05-18",
        "total_photos": 50,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1346,
        "earth_date": "2016-05-20",
        "total_photos": 282,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1347,
        "earth_date": "2016-05-21",
        "total_photos": 50,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1348,
        "earth_date": "2016-05-22",
        "total_photos": 394,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1349,
        "earth_date": "2016-05-23",
        "total_photos": 310,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1350,
        "earth_date": "2016-05-24",
        "total_photos": 94,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1351,
        "earth_date": "2016-05-25",
        "total_photos": 230,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1352,
        "earth_date": "2016-05-26",
        "total_photos": 469,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1353,
        "earth_date": "2016-05-27",
        "total_photos": 391,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1354,
        "earth_date": "2016-05-28",
        "total_photos": 70,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1355,
        "earth_date": "2016-05-29",
        "total_photos": 427,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1356,
        "earth_date": "2016-05-30",
        "total_photos": 672,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1357,
        "earth_date": "2016-05-31",
        "total_photos": 168,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1358,
        "earth_date": "2016-06-01",
        "total_photos": 139,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1359,
        "earth_date": "2016-06-02",
        "total_photos": 349,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1360,
        "earth_date": "2016-06-03",
        "total_photos": 48,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1361,
        "earth_date": "2016-06-04",
        "total_photos": 229,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1362,
        "earth_date": "2016-06-05",
        "total_photos": 43,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1363,
        "earth_date": "2016-06-06",
        "total_photos": 122,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1364,
        "earth_date": "2016-06-07",
        "total_photos": 190,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1365,
        "earth_date": "2016-06-08",
        "total_photos": 105,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1366,
        "earth_date": "2016-06-09",
        "total_photos": 186,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1367,
        "earth_date": "2016-06-10",
        "total_photos": 382,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1368,
        "earth_date": "2016-06-11",
        "total_photos": 165,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1369,
        "earth_date": "2016-06-12",
        "total_photos": 257,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1370,
        "earth_date": "2016-06-13",
        "total_photos": 20,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1371,
        "earth_date": "2016-06-14",
        "total_photos": 335,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1372,
        "earth_date": "2016-06-15",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1373,
        "earth_date": "2016-06-16",
        "total_photos": 309,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1374,
        "earth_date": "2016-06-17",
        "total_photos": 43,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1375,
        "earth_date": "2016-06-18",
        "total_photos": 278,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1376,
        "earth_date": "2016-06-19",
        "total_photos": 158,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1377,
        "earth_date": "2016-06-20",
        "total_photos": 14,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1378,
        "earth_date": "2016-06-21",
        "total_photos": 214,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1379,
        "earth_date": "2016-06-22",
        "total_photos": 80,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1380,
        "earth_date": "2016-06-23",
        "total_photos": 129,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1381,
        "earth_date": "2016-06-24",
        "total_photos": 151,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1382,
        "earth_date": "2016-06-25",
        "total_photos": 142,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1383,
        "earth_date": "2016-06-27",
        "total_photos": 206,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1384,
        "earth_date": "2016-06-28",
        "total_photos": 583,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1385,
        "earth_date": "2016-06-29",
        "total_photos": 213,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1386,
        "earth_date": "2016-06-30",
        "total_photos": 195,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1387,
        "earth_date": "2016-07-01",
        "total_photos": 191,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1388,
        "earth_date": "2016-07-02",
        "total_photos": 22,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1398,
        "earth_date": "2016-07-12",
        "total_photos": 391,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1399,
        "earth_date": "2016-07-13",
        "total_photos": 392,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1400,
        "earth_date": "2016-07-14",
        "total_photos": 287,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1401,
        "earth_date": "2016-07-15",
        "total_photos": 229,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1402,
        "earth_date": "2016-07-16",
        "total_photos": 219,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1403,
        "earth_date": "2016-07-17",
        "total_photos": 68,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1404,
        "earth_date": "2016-07-18",
        "total_photos": 68,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1405,
        "earth_date": "2016-07-19",
        "total_photos": 284,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1406,
        "earth_date": "2016-07-20",
        "total_photos": 28,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1407,
        "earth_date": "2016-07-21",
        "total_photos": 228,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1408,
        "earth_date": "2016-07-22",
        "total_photos": 531,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1409,
        "earth_date": "2016-07-23",
        "total_photos": 221,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1410,
        "earth_date": "2016-07-24",
        "total_photos": 235,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1411,
        "earth_date": "2016-07-25",
        "total_photos": 58,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1412,
        "earth_date": "2016-07-26",
        "total_photos": 189,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1413,
        "earth_date": "2016-07-27",
        "total_photos": 162,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1414,
        "earth_date": "2016-07-28",
        "total_photos": 271,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1415,
        "earth_date": "2016-07-29",
        "total_photos": 29,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1416,
        "earth_date": "2016-07-30",
        "total_photos": 196,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1417,
        "earth_date": "2016-07-31",
        "total_photos": 309,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1418,
        "earth_date": "2016-08-01",
        "total_photos": 169,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1419,
        "earth_date": "2016-08-03",
        "total_photos": 428,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1420,
        "earth_date": "2016-08-04",
        "total_photos": 196,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1421,
        "earth_date": "2016-08-05",
        "total_photos": 445,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1422,
        "earth_date": "2016-08-06",
        "total_photos": 181,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1423,
        "earth_date": "2016-08-07",
        "total_photos": 39,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1424,
        "earth_date": "2016-08-08",
        "total_photos": 81,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1425,
        "earth_date": "2016-08-09",
        "total_photos": 108,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1426,
        "earth_date": "2016-08-10",
        "total_photos": 187,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1427,
        "earth_date": "2016-08-11",
        "total_photos": 193,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1428,
        "earth_date": "2016-08-12",
        "total_photos": 193,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1429,
        "earth_date": "2016-08-13",
        "total_photos": 321,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1430,
        "earth_date": "2016-08-14",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1431,
        "earth_date": "2016-08-15",
        "total_photos": 276,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1432,
        "earth_date": "2016-08-16",
        "total_photos": 283,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1433,
        "earth_date": "2016-08-17",
        "total_photos": 268,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1434,
        "earth_date": "2016-08-18",
        "total_photos": 241,
        "cameras": [
          "CHEMCAM",
          "MAHLI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 1435,
        "earth_date": "2016-08-19",
        "total_photos": 261,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1436,
        "earth_date": "2016-08-20",
        "total_photos": 161,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1437,
        "earth_date": "2016-08-21",
        "total_photos": 35,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1438,
        "earth_date": "2016-08-22",
        "total_photos": 419,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1439,
        "earth_date": "2016-08-23",
        "total_photos": 292,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1440,
        "earth_date": "2016-08-24",
        "total_photos": 48,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1441,
        "earth_date": "2016-08-25",
        "total_photos": 291,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1442,
        "earth_date": "2016-08-26",
        "total_photos": 16,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1443,
        "earth_date": "2016-08-27",
        "total_photos": 135,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1444,
        "earth_date": "2016-08-28",
        "total_photos": 159,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1445,
        "earth_date": "2016-08-29",
        "total_photos": 119,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1446,
        "earth_date": "2016-08-30",
        "total_photos": 244,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1447,
        "earth_date": "2016-08-31",
        "total_photos": 77,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1448,
        "earth_date": "2016-09-01",
        "total_photos": 696,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1449,
        "earth_date": "2016-09-02",
        "total_photos": 21,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1450,
        "earth_date": "2016-09-03",
        "total_photos": 450,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1451,
        "earth_date": "2016-09-04",
        "total_photos": 359,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1452,
        "earth_date": "2016-09-05",
        "total_photos": 305,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1453,
        "earth_date": "2016-09-06",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1454,
        "earth_date": "2016-09-07",
        "total_photos": 333,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1455,
        "earth_date": "2016-09-08",
        "total_photos": 322,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1456,
        "earth_date": "2016-09-10",
        "total_photos": 70,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1457,
        "earth_date": "2016-09-11",
        "total_photos": 147,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1458,
        "earth_date": "2016-09-12",
        "total_photos": 143,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1459,
        "earth_date": "2016-09-13",
        "total_photos": 298,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1460,
        "earth_date": "2016-09-14",
        "total_photos": 186,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1461,
        "earth_date": "2016-09-15",
        "total_photos": 39,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1462,
        "earth_date": "2016-09-16",
        "total_photos": 337,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1463,
        "earth_date": "2016-09-17",
        "total_photos": 393,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1464,
        "earth_date": "2016-09-18",
        "total_photos": 132,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1465,
        "earth_date": "2016-09-19",
        "total_photos": 125,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST"
        ]
      },
      {
        "sol": 1466,
        "earth_date": "2016-09-20",
        "total_photos": 178,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1467,
        "earth_date": "2016-09-21",
        "total_photos": 214,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1468,
        "earth_date": "2016-09-22",
        "total_photos": 310,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1469,
        "earth_date": "2016-09-23",
        "total_photos": 356,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1470,
        "earth_date": "2016-09-24",
        "total_photos": 146,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1471,
        "earth_date": "2016-09-25",
        "total_photos": 294,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1472,
        "earth_date": "2016-09-26",
        "total_photos": 58,
        "cameras": [
          "CHEMCAM",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 1473,
        "earth_date": "2016-09-27",
        "total_photos": 181,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1474,
        "earth_date": "2016-09-28",
        "total_photos": 318,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1475,
        "earth_date": "2016-09-29",
        "total_photos": 289,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1476,
        "earth_date": "2016-09-30",
        "total_photos": 51,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1477,
        "earth_date": "2016-10-01",
        "total_photos": 231,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1478,
        "earth_date": "2016-10-02",
        "total_photos": 209,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1479,
        "earth_date": "2016-10-03",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1480,
        "earth_date": "2016-10-04",
        "total_photos": 253,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1481,
        "earth_date": "2016-10-05",
        "total_photos": 22,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1482,
        "earth_date": "2016-10-06",
        "total_photos": 378,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1483,
        "earth_date": "2016-10-07",
        "total_photos": 31,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1484,
        "earth_date": "2016-10-08",
        "total_photos": 158,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1485,
        "earth_date": "2016-10-09",
        "total_photos": 322,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1486,
        "earth_date": "2016-10-10",
        "total_photos": 30,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1487,
        "earth_date": "2016-10-11",
        "total_photos": 211,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1488,
        "earth_date": "2016-10-12",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "MARDI",
          "RHAZ"
        ]
      },
      {
        "sol": 1489,
        "earth_date": "2016-10-13",
        "total_photos": 226,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1490,
        "earth_date": "2016-10-14",
        "total_photos": 14,
        "cameras": [
          "FHAZ",
          "MARDI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1491,
        "earth_date": "2016-10-15",
        "total_photos": 153,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1492,
        "earth_date": "2016-10-17",
        "total_photos": 435,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1493,
        "earth_date": "2016-10-18",
        "total_photos": 136,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1494,
        "earth_date": "2016-10-19",
        "total_photos": 152,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1495,
        "earth_date": "2016-10-20",
        "total_photos": 138,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1496,
        "earth_date": "2016-10-21",
        "total_photos": 202,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1497,
        "earth_date": "2016-10-22",
        "total_photos": 57,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1498,
        "earth_date": "2016-10-23",
        "total_photos": 152,
        "cameras": [
          "CHEMCAM",
          "MAHLI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 1499,
        "earth_date": "2016-10-24",
        "total_photos": 149,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1500,
        "earth_date": "2016-10-25",
        "total_photos": 217,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1501,
        "earth_date": "2016-10-26",
        "total_photos": 274,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1502,
        "earth_date": "2016-10-27",
        "total_photos": 199,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1503,
        "earth_date": "2016-10-28",
        "total_photos": 192,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1504,
        "earth_date": "2016-10-29",
        "total_photos": 156,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1505,
        "earth_date": "2016-10-30",
        "total_photos": 154,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1506,
        "earth_date": "2016-10-31",
        "total_photos": 237,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1507,
        "earth_date": "2016-11-01",
        "total_photos": 223,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1508,
        "earth_date": "2016-11-02",
        "total_photos": 266,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1509,
        "earth_date": "2016-11-03",
        "total_photos": 259,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1510,
        "earth_date": "2016-11-04",
        "total_photos": 41,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1511,
        "earth_date": "2016-11-05",
        "total_photos": 184,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1512,
        "earth_date": "2016-11-06",
        "total_photos": 436,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1513,
        "earth_date": "2016-11-07",
        "total_photos": 46,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1514,
        "earth_date": "2016-11-08",
        "total_photos": 276,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1515,
        "earth_date": "2016-11-09",
        "total_photos": 27,
        "cameras": [
          "MARDI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 1516,
        "earth_date": "2016-11-10",
        "total_photos": 214,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1517,
        "earth_date": "2016-11-11",
        "total_photos": 16,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1518,
        "earth_date": "2016-11-12",
        "total_photos": 261,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1519,
        "earth_date": "2016-11-13",
        "total_photos": 206,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1520,
        "earth_date": "2016-11-14",
        "total_photos": 106,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1521,
        "earth_date": "2016-11-15",
        "total_photos": 161,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1522,
        "earth_date": "2016-11-16",
        "total_photos": 54,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1523,
        "earth_date": "2016-11-17",
        "total_photos": 225,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1524,
        "earth_date": "2016-11-18",
        "total_photos": 143,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1525,
        "earth_date": "2016-11-19",
        "total_photos": 266,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1526,
        "earth_date": "2016-11-20",
        "total_photos": 170,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1527,
        "earth_date": "2016-11-21",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1528,
        "earth_date": "2016-11-23",
        "total_photos": 155,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1529,
        "earth_date": "2016-11-24",
        "total_photos": 128,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1530,
        "earth_date": "2016-11-25",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1531,
        "earth_date": "2016-11-26",
        "total_photos": 124,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1532,
        "earth_date": "2016-11-27",
        "total_photos": 107,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1533,
        "earth_date": "2016-11-28",
        "total_photos": 42,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1534,
        "earth_date": "2016-11-29",
        "total_photos": 125,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1535,
        "earth_date": "2016-11-30",
        "total_photos": 161,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1536,
        "earth_date": "2016-12-01",
        "total_photos": 69,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1537,
        "earth_date": "2016-12-02",
        "total_photos": 393,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1538,
        "earth_date": "2016-12-03",
        "total_photos": 25,
        "cameras": [
          "CHEMCAM",
          "MAST"
        ]
      },
      {
        "sol": 1539,
        "earth_date": "2016-12-04",
        "total_photos": 20,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1540,
        "earth_date": "2016-12-05",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1541,
        "earth_date": "2016-12-06",
        "total_photos": 60,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1542,
        "earth_date": "2016-12-07",
        "total_photos": 36,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1543,
        "earth_date": "2016-12-08",
        "total_photos": 50,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1544,
        "earth_date": "2016-12-09",
        "total_photos": 126,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1545,
        "earth_date": "2016-12-10",
        "total_photos": 56,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1546,
        "earth_date": "2016-12-11",
        "total_photos": 32,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1547,
        "earth_date": "2016-12-12",
        "total_photos": 64,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1548,
        "earth_date": "2016-12-13",
        "total_photos": 37,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1549,
        "earth_date": "2016-12-14",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1550,
        "earth_date": "2016-12-15",
        "total_photos": 17,
        "cameras": [
          "CHEMCAM",
          "MARDI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1551,
        "earth_date": "2016-12-16",
        "total_photos": 78,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1552,
        "earth_date": "2016-12-17",
        "total_photos": 237,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1553,
        "earth_date": "2016-12-18",
        "total_photos": 132,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1554,
        "earth_date": "2016-12-19",
        "total_photos": 21,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1555,
        "earth_date": "2016-12-20",
        "total_photos": 339,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1556,
        "earth_date": "2016-12-21",
        "total_photos": 10,
        "cameras": [
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1557,
        "earth_date": "2016-12-22",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1558,
        "earth_date": "2016-12-23",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1559,
        "earth_date": "2016-12-24",
        "total_photos": 79,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1560,
        "earth_date": "2016-12-25",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1561,
        "earth_date": "2016-12-26",
        "total_photos": 48,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1562,
        "earth_date": "2016-12-27",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1563,
        "earth_date": "2016-12-28",
        "total_photos": 12,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1564,
        "earth_date": "2016-12-29",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1565,
        "earth_date": "2016-12-31",
        "total_photos": 64,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1566,
        "earth_date": "2017-01-01",
        "total_photos": 306,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1567,
        "earth_date": "2017-01-02",
        "total_photos": 10,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1568,
        "earth_date": "2017-01-03",
        "total_photos": 53,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1569,
        "earth_date": "2017-01-04",
        "total_photos": 190,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1570,
        "earth_date": "2017-01-05",
        "total_photos": 203,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1571,
        "earth_date": "2017-01-06",
        "total_photos": 240,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1572,
        "earth_date": "2017-01-07",
        "total_photos": 195,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1573,
        "earth_date": "2017-01-08",
        "total_photos": 86,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1574,
        "earth_date": "2017-01-09",
        "total_photos": 145,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1575,
        "earth_date": "2017-01-10",
        "total_photos": 120,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1576,
        "earth_date": "2017-01-11",
        "total_photos": 177,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1577,
        "earth_date": "2017-01-12",
        "total_photos": 244,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1578,
        "earth_date": "2017-01-13",
        "total_photos": 254,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1580,
        "earth_date": "2017-01-15",
        "total_photos": 147,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1581,
        "earth_date": "2017-01-16",
        "total_photos": 122,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1582,
        "earth_date": "2017-01-17",
        "total_photos": 248,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1583,
        "earth_date": "2017-01-18",
        "total_photos": 185,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1584,
        "earth_date": "2017-01-19",
        "total_photos": 217,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1585,
        "earth_date": "2017-01-20",
        "total_photos": 224,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1586,
        "earth_date": "2017-01-21",
        "total_photos": 140,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1587,
        "earth_date": "2017-01-22",
        "total_photos": 262,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1588,
        "earth_date": "2017-01-23",
        "total_photos": 70,
        "cameras": [
          "FHAZ",
          "MARDI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1589,
        "earth_date": "2017-01-24",
        "total_photos": 313,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1590,
        "earth_date": "2017-01-25",
        "total_photos": 64,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1591,
        "earth_date": "2017-01-26",
        "total_photos": 291,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1592,
        "earth_date": "2017-01-27",
        "total_photos": 171,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1593,
        "earth_date": "2017-01-28",
        "total_photos": 154,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1594,
        "earth_date": "2017-01-29",
        "total_photos": 218,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1595,
        "earth_date": "2017-01-30",
        "total_photos": 27,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1596,
        "earth_date": "2017-01-31",
        "total_photos": 240,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1597,
        "earth_date": "2017-02-01",
        "total_photos": 60,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1598,
        "earth_date": "2017-02-02",
        "total_photos": 421,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1599,
        "earth_date": "2017-02-03",
        "total_photos": 127,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1600,
        "earth_date": "2017-02-04",
        "total_photos": 252,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1601,
        "earth_date": "2017-02-06",
        "total_photos": 419,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1602,
        "earth_date": "2017-02-07",
        "total_photos": 232,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1603,
        "earth_date": "2017-02-08",
        "total_photos": 405,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1604,
        "earth_date": "2017-02-09",
        "total_photos": 344,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1605,
        "earth_date": "2017-02-10",
        "total_photos": 232,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1606,
        "earth_date": "2017-02-11",
        "total_photos": 117,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1607,
        "earth_date": "2017-02-12",
        "total_photos": 88,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1608,
        "earth_date": "2017-02-13",
        "total_photos": 369,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1609,
        "earth_date": "2017-02-14",
        "total_photos": 230,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1610,
        "earth_date": "2017-02-15",
        "total_photos": 352,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1611,
        "earth_date": "2017-02-16",
        "total_photos": 225,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1612,
        "earth_date": "2017-02-17",
        "total_photos": 175,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1613,
        "earth_date": "2017-02-18",
        "total_photos": 159,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1614,
        "earth_date": "2017-02-19",
        "total_photos": 165,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1615,
        "earth_date": "2017-02-20",
        "total_photos": 68,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1616,
        "earth_date": "2017-02-21",
        "total_photos": 74,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1617,
        "earth_date": "2017-02-22",
        "total_photos": 189,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1618,
        "earth_date": "2017-02-23",
        "total_photos": 354,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1619,
        "earth_date": "2017-02-24",
        "total_photos": 177,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1620,
        "earth_date": "2017-02-25",
        "total_photos": 149,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1621,
        "earth_date": "2017-02-26",
        "total_photos": 73,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1622,
        "earth_date": "2017-02-27",
        "total_photos": 36,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1623,
        "earth_date": "2017-02-28",
        "total_photos": 93,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1624,
        "earth_date": "2017-03-01",
        "total_photos": 266,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1625,
        "earth_date": "2017-03-02",
        "total_photos": 410,
        "cameras": [
          "CHEMCAM",
          "MARDI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 1626,
        "earth_date": "2017-03-03",
        "total_photos": 158,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1627,
        "earth_date": "2017-03-04",
        "total_photos": 190,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1628,
        "earth_date": "2017-03-05",
        "total_photos": 313,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1629,
        "earth_date": "2017-03-06",
        "total_photos": 115,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1630,
        "earth_date": "2017-03-07",
        "total_photos": 209,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1631,
        "earth_date": "2017-03-08",
        "total_photos": 106,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1632,
        "earth_date": "2017-03-09",
        "total_photos": 216,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1633,
        "earth_date": "2017-03-10",
        "total_photos": 116,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1634,
        "earth_date": "2017-03-11",
        "total_photos": 237,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1635,
        "earth_date": "2017-03-12",
        "total_photos": 218,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1636,
        "earth_date": "2017-03-13",
        "total_photos": 163,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1637,
        "earth_date": "2017-03-15",
        "total_photos": 219,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1638,
        "earth_date": "2017-03-16",
        "total_photos": 123,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1639,
        "earth_date": "2017-03-17",
        "total_photos": 215,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1640,
        "earth_date": "2017-03-18",
        "total_photos": 143,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1641,
        "earth_date": "2017-03-19",
        "total_photos": 139,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 1642,
        "earth_date": "2017-03-20",
        "total_photos": 150,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1643,
        "earth_date": "2017-03-21",
        "total_photos": 246,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1644,
        "earth_date": "2017-03-22",
        "total_photos": 154,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1645,
        "earth_date": "2017-03-23",
        "total_photos": 264,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1646,
        "earth_date": "2017-03-24",
        "total_photos": 255,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1647,
        "earth_date": "2017-03-25",
        "total_photos": 313,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1648,
        "earth_date": "2017-03-26",
        "total_photos": 220,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1649,
        "earth_date": "2017-03-27",
        "total_photos": 139,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1650,
        "earth_date": "2017-03-28",
        "total_photos": 164,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1651,
        "earth_date": "2017-03-29",
        "total_photos": 90,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1652,
        "earth_date": "2017-03-30",
        "total_photos": 114,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1653,
        "earth_date": "2017-03-31",
        "total_photos": 114,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1657,
        "earth_date": "2017-04-04",
        "total_photos": 71,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1658,
        "earth_date": "2017-04-05",
        "total_photos": 68,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1659,
        "earth_date": "2017-04-06",
        "total_photos": 22,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 1660,
        "earth_date": "2017-04-07",
        "total_photos": 2,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 1661,
        "earth_date": "2017-04-08",
        "total_photos": 64,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1662,
        "earth_date": "2017-04-09",
        "total_photos": 16,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1663,
        "earth_date": "2017-04-10",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1664,
        "earth_date": "2017-04-11",
        "total_photos": 65,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1665,
        "earth_date": "2017-04-12",
        "total_photos": 52,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1666,
        "earth_date": "2017-04-13",
        "total_photos": 54,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1667,
        "earth_date": "2017-04-14",
        "total_photos": 38,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1668,
        "earth_date": "2017-04-15",
        "total_photos": 185,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1669,
        "earth_date": "2017-04-16",
        "total_photos": 148,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1670,
        "earth_date": "2017-04-17",
        "total_photos": 74,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1671,
        "earth_date": "2017-04-18",
        "total_photos": 72,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1672,
        "earth_date": "2017-04-19",
        "total_photos": 41,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1673,
        "earth_date": "2017-04-20",
        "total_photos": 115,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1674,
        "earth_date": "2017-04-22",
        "total_photos": 16,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1675,
        "earth_date": "2017-04-23",
        "total_photos": 135,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1676,
        "earth_date": "2017-04-24",
        "total_photos": 28,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1677,
        "earth_date": "2017-04-25",
        "total_photos": 55,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1678,
        "earth_date": "2017-04-26",
        "total_photos": 40,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1679,
        "earth_date": "2017-04-27",
        "total_photos": 108,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1680,
        "earth_date": "2017-04-28",
        "total_photos": 69,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1681,
        "earth_date": "2017-04-29",
        "total_photos": 100,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1682,
        "earth_date": "2017-04-30",
        "total_photos": 49,
        "cameras": [
          "CHEMCAM",
          "MAHLI"
        ]
      },
      {
        "sol": 1683,
        "earth_date": "2017-05-01",
        "total_photos": 28,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1684,
        "earth_date": "2017-05-02",
        "total_photos": 52,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1685,
        "earth_date": "2017-05-03",
        "total_photos": 79,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1686,
        "earth_date": "2017-05-04",
        "total_photos": 90,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1687,
        "earth_date": "2017-05-05",
        "total_photos": 67,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1688,
        "earth_date": "2017-05-06",
        "total_photos": 89,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1689,
        "earth_date": "2017-05-07",
        "total_photos": 40,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1690,
        "earth_date": "2017-05-08",
        "total_photos": 48,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1691,
        "earth_date": "2017-05-09",
        "total_photos": 127,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1692,
        "earth_date": "2017-05-10",
        "total_photos": 4,
        "cameras": [
          "CHEMCAM",
          "FHAZ"
        ]
      },
      {
        "sol": 1693,
        "earth_date": "2017-05-11",
        "total_photos": 64,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1694,
        "earth_date": "2017-05-12",
        "total_photos": 20,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1695,
        "earth_date": "2017-05-13",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1696,
        "earth_date": "2017-05-14",
        "total_photos": 45,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1697,
        "earth_date": "2017-05-15",
        "total_photos": 4,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 1698,
        "earth_date": "2017-05-16",
        "total_photos": 26,
        "cameras": [
          "FHAZ",
          "MAHLI"
        ]
      },
      {
        "sol": 1699,
        "earth_date": "2017-05-17",
        "total_photos": 2,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 1700,
        "earth_date": "2017-05-18",
        "total_photos": 30,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1701,
        "earth_date": "2017-05-19",
        "total_photos": 43,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1702,
        "earth_date": "2017-05-20",
        "total_photos": 149,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1703,
        "earth_date": "2017-05-21",
        "total_photos": 22,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM"
        ]
      },
      {
        "sol": 1704,
        "earth_date": "2017-05-22",
        "total_photos": 35,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1705,
        "earth_date": "2017-05-23",
        "total_photos": 63,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1706,
        "earth_date": "2017-05-24",
        "total_photos": 28,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1707,
        "earth_date": "2017-05-25",
        "total_photos": 137,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1708,
        "earth_date": "2017-05-26",
        "total_photos": 39,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1710,
        "earth_date": "2017-05-29",
        "total_photos": 102,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1711,
        "earth_date": "2017-05-30",
        "total_photos": 57,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1712,
        "earth_date": "2017-05-31",
        "total_photos": 48,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1714,
        "earth_date": "2017-06-02",
        "total_photos": 100,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1715,
        "earth_date": "2017-06-03",
        "total_photos": 96,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1716,
        "earth_date": "2017-06-04",
        "total_photos": 35,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1717,
        "earth_date": "2017-06-05",
        "total_photos": 129,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1718,
        "earth_date": "2017-06-06",
        "total_photos": 102,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1719,
        "earth_date": "2017-06-07",
        "total_photos": 67,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1720,
        "earth_date": "2017-06-08",
        "total_photos": 28,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1721,
        "earth_date": "2017-06-09",
        "total_photos": 54,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1722,
        "earth_date": "2017-06-10",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1723,
        "earth_date": "2017-06-11",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1724,
        "earth_date": "2017-06-12",
        "total_photos": 28,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1725,
        "earth_date": "2017-06-13",
        "total_photos": 97,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1726,
        "earth_date": "2017-06-14",
        "total_photos": 28,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1727,
        "earth_date": "2017-06-15",
        "total_photos": 110,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1728,
        "earth_date": "2017-06-16",
        "total_photos": 58,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1729,
        "earth_date": "2017-06-17",
        "total_photos": 95,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1730,
        "earth_date": "2017-06-18",
        "total_photos": 36,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1731,
        "earth_date": "2017-06-19",
        "total_photos": 45,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1732,
        "earth_date": "2017-06-20",
        "total_photos": 59,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 1733,
        "earth_date": "2017-06-21",
        "total_photos": 94,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1734,
        "earth_date": "2017-06-22",
        "total_photos": 80,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 1735,
        "earth_date": "2017-06-23",
        "total_photos": 44,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1736,
        "earth_date": "2017-06-24",
        "total_photos": 2,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 1737,
        "earth_date": "2017-06-25",
        "total_photos": 34,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1738,
        "earth_date": "2017-06-26",
        "total_photos": 28,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1739,
        "earth_date": "2017-06-27",
        "total_photos": 246,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1740,
        "earth_date": "2017-06-28",
        "total_photos": 42,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1741,
        "earth_date": "2017-06-29",
        "total_photos": 76,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1742,
        "earth_date": "2017-06-30",
        "total_photos": 32,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1743,
        "earth_date": "2017-07-01",
        "total_photos": 83,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1744,
        "earth_date": "2017-07-02",
        "total_photos": 95,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1745,
        "earth_date": "2017-07-03",
        "total_photos": 85,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1746,
        "earth_date": "2017-07-04",
        "total_photos": 40,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1747,
        "earth_date": "2017-07-06",
        "total_photos": 85,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1748,
        "earth_date": "2017-07-07",
        "total_photos": 88,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1749,
        "earth_date": "2017-07-08",
        "total_photos": 193,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1750,
        "earth_date": "2017-07-09",
        "total_photos": 76,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1751,
        "earth_date": "2017-07-10",
        "total_photos": 60,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1752,
        "earth_date": "2017-07-11",
        "total_photos": 58,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1753,
        "earth_date": "2017-07-12",
        "total_photos": 72,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1754,
        "earth_date": "2017-07-13",
        "total_photos": 46,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1755,
        "earth_date": "2017-07-14",
        "total_photos": 16,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1756,
        "earth_date": "2017-07-15",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1757,
        "earth_date": "2017-07-16",
        "total_photos": 18,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1758,
        "earth_date": "2017-07-17",
        "total_photos": 2,
        "cameras": [
          "FHAZ"
        ]
      },
      {
        "sol": 1759,
        "earth_date": "2017-07-18",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1760,
        "earth_date": "2017-07-19",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1761,
        "earth_date": "2017-07-20",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1762,
        "earth_date": "2017-07-21",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1763,
        "earth_date": "2017-07-22",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1764,
        "earth_date": "2017-07-23",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1765,
        "earth_date": "2017-07-24",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1766,
        "earth_date": "2017-07-25",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1767,
        "earth_date": "2017-07-26",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1768,
        "earth_date": "2017-07-27",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1769,
        "earth_date": "2017-07-28",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1770,
        "earth_date": "2017-07-29",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1771,
        "earth_date": "2017-07-30",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1772,
        "earth_date": "2017-07-31",
        "total_photos": 2,
        "cameras": [
          "FHAZ"
        ]
      },
      {
        "sol": 1773,
        "earth_date": "2017-08-01",
        "total_photos": 2,
        "cameras": [
          "FHAZ"
        ]
      },
      {
        "sol": 1774,
        "earth_date": "2017-08-02",
        "total_photos": 2,
        "cameras": [
          "FHAZ"
        ]
      },
      {
        "sol": 1775,
        "earth_date": "2017-08-03",
        "total_photos": 2,
        "cameras": [
          "FHAZ"
        ]
      },
      {
        "sol": 1776,
        "earth_date": "2017-08-04",
        "total_photos": 1,
        "cameras": [
          "FHAZ"
        ]
      },
      {
        "sol": 1777,
        "earth_date": "2017-08-05",
        "total_photos": 2,
        "cameras": [
          "FHAZ"
        ]
      },
      {
        "sol": 1778,
        "earth_date": "2017-08-06",
        "total_photos": 2,
        "cameras": [
          "FHAZ"
        ]
      },
      {
        "sol": 1779,
        "earth_date": "2017-08-07",
        "total_photos": 2,
        "cameras": [
          "FHAZ"
        ]
      },
      {
        "sol": 1780,
        "earth_date": "2017-08-08",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1781,
        "earth_date": "2017-08-09",
        "total_photos": 62,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1782,
        "earth_date": "2017-08-10",
        "total_photos": 132,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1783,
        "earth_date": "2017-08-12",
        "total_photos": 100,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1784,
        "earth_date": "2017-08-13",
        "total_photos": 19,
        "cameras": [
          "MAHLI"
        ]
      },
      {
        "sol": 1785,
        "earth_date": "2017-08-14",
        "total_photos": 156,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1786,
        "earth_date": "2017-08-15",
        "total_photos": 129,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1787,
        "earth_date": "2017-08-16",
        "total_photos": 137,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1788,
        "earth_date": "2017-08-17",
        "total_photos": 98,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1789,
        "earth_date": "2017-08-18",
        "total_photos": 24,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1790,
        "earth_date": "2017-08-19",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1791,
        "earth_date": "2017-08-20",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1792,
        "earth_date": "2017-08-21",
        "total_photos": 48,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1793,
        "earth_date": "2017-08-22",
        "total_photos": 144,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1794,
        "earth_date": "2017-08-23",
        "total_photos": 36,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1795,
        "earth_date": "2017-08-24",
        "total_photos": 29,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1796,
        "earth_date": "2017-08-25",
        "total_photos": 80,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1797,
        "earth_date": "2017-08-26",
        "total_photos": 74,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1798,
        "earth_date": "2017-08-27",
        "total_photos": 54,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1799,
        "earth_date": "2017-08-28",
        "total_photos": 32,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1800,
        "earth_date": "2017-08-29",
        "total_photos": 32,
        "cameras": [
          "MAHLI"
        ]
      },
      {
        "sol": 1801,
        "earth_date": "2017-08-30",
        "total_photos": 5,
        "cameras": [
          "MARDI",
          "MAST"
        ]
      },
      {
        "sol": 1802,
        "earth_date": "2017-08-31",
        "total_photos": 52,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 1803,
        "earth_date": "2017-09-01",
        "total_photos": 12,
        "cameras": [
          "CHEMCAM",
          "NAVCAM"
        ]
      },
      {
        "sol": 1804,
        "earth_date": "2017-09-02",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1805,
        "earth_date": "2017-09-03",
        "total_photos": 47,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1806,
        "earth_date": "2017-09-04",
        "total_photos": 52,
        "cameras": [
          "CHEMCAM",
          "MAHLI"
        ]
      },
      {
        "sol": 1807,
        "earth_date": "2017-09-05",
        "total_photos": 46,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1808,
        "earth_date": "2017-09-06",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1809,
        "earth_date": "2017-09-07",
        "total_photos": 47,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 1810,
        "earth_date": "2017-09-08",
        "total_photos": 12,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1811,
        "earth_date": "2017-09-09",
        "total_photos": 157,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1812,
        "earth_date": "2017-09-10",
        "total_photos": 94,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1813,
        "earth_date": "2017-09-11",
        "total_photos": 26,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1814,
        "earth_date": "2017-09-12",
        "total_photos": 106,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1815,
        "earth_date": "2017-09-13",
        "total_photos": 36,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1816,
        "earth_date": "2017-09-14",
        "total_photos": 69,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1817,
        "earth_date": "2017-09-15",
        "total_photos": 36,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1818,
        "earth_date": "2017-09-16",
        "total_photos": 143,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 1819,
        "earth_date": "2017-09-18",
        "total_photos": 151,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1821,
        "earth_date": "2017-09-20",
        "total_photos": 100,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1822,
        "earth_date": "2017-09-21",
        "total_photos": 36,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1824,
        "earth_date": "2017-09-23",
        "total_photos": 81,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1825,
        "earth_date": "2017-09-24",
        "total_photos": 27,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1826,
        "earth_date": "2017-09-25",
        "total_photos": 31,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1827,
        "earth_date": "2017-09-26",
        "total_photos": 22,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1828,
        "earth_date": "2017-09-27",
        "total_photos": 52,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1829,
        "earth_date": "2017-09-28",
        "total_photos": 106,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1830,
        "earth_date": "2017-09-29",
        "total_photos": 114,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1831,
        "earth_date": "2017-09-30",
        "total_photos": 30,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1832,
        "earth_date": "2017-10-01",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1833,
        "earth_date": "2017-10-02",
        "total_photos": 49,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1834,
        "earth_date": "2017-10-03",
        "total_photos": 70,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1836,
        "earth_date": "2017-10-05",
        "total_photos": 90,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1837,
        "earth_date": "2017-10-06",
        "total_photos": 45,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1838,
        "earth_date": "2017-10-07",
        "total_photos": 8,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 1839,
        "earth_date": "2017-10-08",
        "total_photos": 9,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1840,
        "earth_date": "2017-10-09",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1841,
        "earth_date": "2017-10-10",
        "total_photos": 10,
        "cameras": [
          "CHEMCAM",
          "NAVCAM"
        ]
      },
      {
        "sol": 1842,
        "earth_date": "2017-10-11",
        "total_photos": 83,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1843,
        "earth_date": "2017-10-12",
        "total_photos": 32,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1844,
        "earth_date": "2017-10-13",
        "total_photos": 6,
        "cameras": [
          "CHEMCAM",
          "NAVCAM"
        ]
      },
      {
        "sol": 1845,
        "earth_date": "2017-10-14",
        "total_photos": 10,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 1846,
        "earth_date": "2017-10-15",
        "total_photos": 114,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1847,
        "earth_date": "2017-10-16",
        "total_photos": 50,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1848,
        "earth_date": "2017-10-17",
        "total_photos": 59,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1849,
        "earth_date": "2017-10-18",
        "total_photos": 8,
        "cameras": [
          "CHEMCAM",
          "NAVCAM"
        ]
      },
      {
        "sol": 1850,
        "earth_date": "2017-10-19",
        "total_photos": 286,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1851,
        "earth_date": "2017-10-20",
        "total_photos": 56,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1852,
        "earth_date": "2017-10-21",
        "total_photos": 166,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1853,
        "earth_date": "2017-10-22",
        "total_photos": 14,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1856,
        "earth_date": "2017-10-26",
        "total_photos": 114,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1857,
        "earth_date": "2017-10-27",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1858,
        "earth_date": "2017-10-28",
        "total_photos": 23,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1859,
        "earth_date": "2017-10-29",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1860,
        "earth_date": "2017-10-30",
        "total_photos": 27,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1861,
        "earth_date": "2017-10-31",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1862,
        "earth_date": "2017-11-01",
        "total_photos": 44,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1863,
        "earth_date": "2017-11-02",
        "total_photos": 139,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1864,
        "earth_date": "2017-11-03",
        "total_photos": 220,
        "cameras": [
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1865,
        "earth_date": "2017-11-04",
        "total_photos": 92,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1866,
        "earth_date": "2017-11-05",
        "total_photos": 284,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1867,
        "earth_date": "2017-11-06",
        "total_photos": 211,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1868,
        "earth_date": "2017-11-07",
        "total_photos": 261,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1869,
        "earth_date": "2017-11-08",
        "total_photos": 130,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1870,
        "earth_date": "2017-11-09",
        "total_photos": 286,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1871,
        "earth_date": "2017-11-10",
        "total_photos": 217,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1872,
        "earth_date": "2017-11-11",
        "total_photos": 213,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1873,
        "earth_date": "2017-11-12",
        "total_photos": 135,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1874,
        "earth_date": "2017-11-13",
        "total_photos": 37,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1875,
        "earth_date": "2017-11-14",
        "total_photos": 148,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1876,
        "earth_date": "2017-11-15",
        "total_photos": 227,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1877,
        "earth_date": "2017-11-16",
        "total_photos": 205,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 1878,
        "earth_date": "2017-11-17",
        "total_photos": 78,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1879,
        "earth_date": "2017-11-18",
        "total_photos": 45,
        "cameras": [
          "CHEMCAM",
          "NAVCAM"
        ]
      },
      {
        "sol": 1880,
        "earth_date": "2017-11-19",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1881,
        "earth_date": "2017-11-20",
        "total_photos": 19,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1882,
        "earth_date": "2017-11-21",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1883,
        "earth_date": "2017-11-22",
        "total_photos": 8,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 1884,
        "earth_date": "2017-11-23",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1885,
        "earth_date": "2017-11-24",
        "total_photos": 44,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1886,
        "earth_date": "2017-11-25",
        "total_photos": 101,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1887,
        "earth_date": "2017-11-26",
        "total_photos": 84,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1888,
        "earth_date": "2017-11-27",
        "total_photos": 62,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1889,
        "earth_date": "2017-11-28",
        "total_photos": 202,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1890,
        "earth_date": "2017-11-29",
        "total_photos": 112,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1891,
        "earth_date": "2017-11-30",
        "total_photos": 43,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1892,
        "earth_date": "2017-12-02",
        "total_photos": 117,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1893,
        "earth_date": "2017-12-03",
        "total_photos": 21,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1894,
        "earth_date": "2017-12-04",
        "total_photos": 243,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1895,
        "earth_date": "2017-12-05",
        "total_photos": 50,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1896,
        "earth_date": "2017-12-06",
        "total_photos": 172,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1897,
        "earth_date": "2017-12-07",
        "total_photos": 47,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1898,
        "earth_date": "2017-12-08",
        "total_photos": 20,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1899,
        "earth_date": "2017-12-09",
        "total_photos": 21,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 1900,
        "earth_date": "2017-12-10",
        "total_photos": 16,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1901,
        "earth_date": "2017-12-11",
        "total_photos": 82,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1902,
        "earth_date": "2017-12-12",
        "total_photos": 50,
        "cameras": [
          "MAHLI"
        ]
      },
      {
        "sol": 1903,
        "earth_date": "2017-12-13",
        "total_photos": 48,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1904,
        "earth_date": "2017-12-14",
        "total_photos": 124,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1905,
        "earth_date": "2017-12-15",
        "total_photos": 126,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1906,
        "earth_date": "2017-12-16",
        "total_photos": 76,
        "cameras": [
          "CHEMCAM",
          "MAHLI"
        ]
      },
      {
        "sol": 1907,
        "earth_date": "2017-12-17",
        "total_photos": 32,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1908,
        "earth_date": "2017-12-18",
        "total_photos": 47,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1909,
        "earth_date": "2017-12-19",
        "total_photos": 40,
        "cameras": [
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 1910,
        "earth_date": "2017-12-20",
        "total_photos": 123,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1911,
        "earth_date": "2017-12-21",
        "total_photos": 45,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 1912,
        "earth_date": "2017-12-22",
        "total_photos": 63,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1913,
        "earth_date": "2017-12-23",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1914,
        "earth_date": "2017-12-24",
        "total_photos": 95,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1915,
        "earth_date": "2017-12-25",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1916,
        "earth_date": "2017-12-26",
        "total_photos": 27,
        "cameras": [
          "CHEMCAM",
          "NAVCAM"
        ]
      },
      {
        "sol": 1917,
        "earth_date": "2017-12-27",
        "total_photos": 10,
        "cameras": [
          "CHEMCAM",
          "NAVCAM"
        ]
      },
      {
        "sol": 1918,
        "earth_date": "2017-12-28",
        "total_photos": 58,
        "cameras": [
          "CHEMCAM",
          "NAVCAM"
        ]
      },
      {
        "sol": 1919,
        "earth_date": "2017-12-29",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1920,
        "earth_date": "2017-12-30",
        "total_photos": 96,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1921,
        "earth_date": "2017-12-31",
        "total_photos": 28,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1922,
        "earth_date": "2018-01-01",
        "total_photos": 196,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1923,
        "earth_date": "2018-01-02",
        "total_photos": 143,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1924,
        "earth_date": "2018-01-03",
        "total_photos": 48,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1925,
        "earth_date": "2018-01-04",
        "total_photos": 192,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1926,
        "earth_date": "2018-01-05",
        "total_photos": 49,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1927,
        "earth_date": "2018-01-06",
        "total_photos": 174,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 1928,
        "earth_date": "2018-01-08",
        "total_photos": 172,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1929,
        "earth_date": "2018-01-09",
        "total_photos": 42,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1930,
        "earth_date": "2018-01-10",
        "total_photos": 54,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1931,
        "earth_date": "2018-01-11",
        "total_photos": 37,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1932,
        "earth_date": "2018-01-12",
        "total_photos": 115,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1933,
        "earth_date": "2018-01-13",
        "total_photos": 95,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1934,
        "earth_date": "2018-01-14",
        "total_photos": 122,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1935,
        "earth_date": "2018-01-15",
        "total_photos": 48,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1936,
        "earth_date": "2018-01-16",
        "total_photos": 60,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1937,
        "earth_date": "2018-01-17",
        "total_photos": 143,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1938,
        "earth_date": "2018-01-18",
        "total_photos": 49,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1939,
        "earth_date": "2018-01-19",
        "total_photos": 88,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1940,
        "earth_date": "2018-01-20",
        "total_photos": 88,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1941,
        "earth_date": "2018-01-21",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1942,
        "earth_date": "2018-01-22",
        "total_photos": 188,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1943,
        "earth_date": "2018-01-23",
        "total_photos": 243,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1944,
        "earth_date": "2018-01-24",
        "total_photos": 42,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1945,
        "earth_date": "2018-01-25",
        "total_photos": 63,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1946,
        "earth_date": "2018-01-26",
        "total_photos": 49,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1947,
        "earth_date": "2018-01-27",
        "total_photos": 89,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1948,
        "earth_date": "2018-01-28",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1949,
        "earth_date": "2018-01-29",
        "total_photos": 151,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1950,
        "earth_date": "2018-01-30",
        "total_photos": 77,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 1951,
        "earth_date": "2018-01-31",
        "total_photos": 9,
        "cameras": [
          "CHEMCAM",
          "NAVCAM"
        ]
      },
      {
        "sol": 1953,
        "earth_date": "2018-02-02",
        "total_photos": 77,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1954,
        "earth_date": "2018-02-03",
        "total_photos": 20,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1955,
        "earth_date": "2018-02-04",
        "total_photos": 64,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1956,
        "earth_date": "2018-02-05",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1957,
        "earth_date": "2018-02-06",
        "total_photos": 37,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1958,
        "earth_date": "2018-02-07",
        "total_photos": 15,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1959,
        "earth_date": "2018-02-08",
        "total_photos": 79,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1960,
        "earth_date": "2018-02-09",
        "total_photos": 115,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1961,
        "earth_date": "2018-02-10",
        "total_photos": 146,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1962,
        "earth_date": "2018-02-11",
        "total_photos": 78,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1963,
        "earth_date": "2018-02-12",
        "total_photos": 93,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1964,
        "earth_date": "2018-02-13",
        "total_photos": 20,
        "cameras": [
          "MAHLI"
        ]
      },
      {
        "sol": 1965,
        "earth_date": "2018-02-15",
        "total_photos": 53,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1966,
        "earth_date": "2018-02-16",
        "total_photos": 83,
        "cameras": [
          "MAHLI"
        ]
      },
      {
        "sol": 1967,
        "earth_date": "2018-02-17",
        "total_photos": 2,
        "cameras": [
          "FHAZ"
        ]
      },
      {
        "sol": 1968,
        "earth_date": "2018-02-18",
        "total_photos": 4,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 1969,
        "earth_date": "2018-02-19",
        "total_photos": 27,
        "cameras": [
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 1970,
        "earth_date": "2018-02-20",
        "total_photos": 12,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1971,
        "earth_date": "2018-02-21",
        "total_photos": 66,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1972,
        "earth_date": "2018-02-22",
        "total_photos": 12,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1973,
        "earth_date": "2018-02-23",
        "total_photos": 15,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1974,
        "earth_date": "2018-02-24",
        "total_photos": 17,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1975,
        "earth_date": "2018-02-25",
        "total_photos": 54,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1976,
        "earth_date": "2018-02-26",
        "total_photos": 35,
        "cameras": [
          "MAST"
        ]
      },
      {
        "sol": 1977,
        "earth_date": "2018-02-27",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1978,
        "earth_date": "2018-02-28",
        "total_photos": 24,
        "cameras": [
          "MAHLI"
        ]
      },
      {
        "sol": 1979,
        "earth_date": "2018-03-01",
        "total_photos": 84,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1980,
        "earth_date": "2018-03-02",
        "total_photos": 58,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1981,
        "earth_date": "2018-03-03",
        "total_photos": 72,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 1982,
        "earth_date": "2018-03-04",
        "total_photos": 17,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1983,
        "earth_date": "2018-03-05",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 1984,
        "earth_date": "2018-03-06",
        "total_photos": 76,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1985,
        "earth_date": "2018-03-07",
        "total_photos": 38,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1986,
        "earth_date": "2018-03-08",
        "total_photos": 54,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1987,
        "earth_date": "2018-03-09",
        "total_photos": 9,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 1988,
        "earth_date": "2018-03-10",
        "total_photos": 4,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 1989,
        "earth_date": "2018-03-11",
        "total_photos": 26,
        "cameras": [
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 1990,
        "earth_date": "2018-03-12",
        "total_photos": 10,
        "cameras": [
          "MAHLI"
        ]
      },
      {
        "sol": 1991,
        "earth_date": "2018-03-13",
        "total_photos": 51,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 1992,
        "earth_date": "2018-03-14",
        "total_photos": 32,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1993,
        "earth_date": "2018-03-15",
        "total_photos": 24,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1994,
        "earth_date": "2018-03-16",
        "total_photos": 16,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 1995,
        "earth_date": "2018-03-17",
        "total_photos": 22,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 1996,
        "earth_date": "2018-03-18",
        "total_photos": 158,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1997,
        "earth_date": "2018-03-19",
        "total_photos": 10,
        "cameras": [
          "CHEMCAM",
          "NAVCAM"
        ]
      },
      {
        "sol": 1998,
        "earth_date": "2018-03-20",
        "total_photos": 107,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 1999,
        "earth_date": "2018-03-21",
        "total_photos": 43,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2000,
        "earth_date": "2018-03-22",
        "total_photos": 76,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2001,
        "earth_date": "2018-03-24",
        "total_photos": 20,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2002,
        "earth_date": "2018-03-25",
        "total_photos": 79,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 2003,
        "earth_date": "2018-03-26",
        "total_photos": 88,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2004,
        "earth_date": "2018-03-27",
        "total_photos": 41,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2005,
        "earth_date": "2018-03-28",
        "total_photos": 100,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI"
        ]
      },
      {
        "sol": 2006,
        "earth_date": "2018-03-29",
        "total_photos": 18,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2007,
        "earth_date": "2018-03-30",
        "total_photos": 54,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2008,
        "earth_date": "2018-03-31",
        "total_photos": 113,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2009,
        "earth_date": "2018-04-01",
        "total_photos": 47,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2010,
        "earth_date": "2018-04-02",
        "total_photos": 10,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2011,
        "earth_date": "2018-04-03",
        "total_photos": 54,
        "cameras": [
          "CHEMCAM",
          "FHAZ"
        ]
      },
      {
        "sol": 2012,
        "earth_date": "2018-04-04",
        "total_photos": 52,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2013,
        "earth_date": "2018-04-05",
        "total_photos": 276,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2014,
        "earth_date": "2018-04-06",
        "total_photos": 84,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2015,
        "earth_date": "2018-04-07",
        "total_photos": 8,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2016,
        "earth_date": "2018-04-08",
        "total_photos": 181,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 2017,
        "earth_date": "2018-04-09",
        "total_photos": 40,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2018,
        "earth_date": "2018-04-10",
        "total_photos": 46,
        "cameras": [
          "CHEMCAM",
          "MAHLI"
        ]
      },
      {
        "sol": 2019,
        "earth_date": "2018-04-11",
        "total_photos": 212,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2020,
        "earth_date": "2018-04-12",
        "total_photos": 8,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM"
        ]
      },
      {
        "sol": 2021,
        "earth_date": "2018-04-13",
        "total_photos": 4,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2022,
        "earth_date": "2018-04-14",
        "total_photos": 101,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 2023,
        "earth_date": "2018-04-15",
        "total_photos": 115,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2024,
        "earth_date": "2018-04-16",
        "total_photos": 50,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2025,
        "earth_date": "2018-04-17",
        "total_photos": 12,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2026,
        "earth_date": "2018-04-18",
        "total_photos": 31,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 2027,
        "earth_date": "2018-04-19",
        "total_photos": 4,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 2028,
        "earth_date": "2018-04-20",
        "total_photos": 10,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 2029,
        "earth_date": "2018-04-21",
        "total_photos": 84,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2030,
        "earth_date": "2018-04-22",
        "total_photos": 114,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2031,
        "earth_date": "2018-04-23",
        "total_photos": 21,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2032,
        "earth_date": "2018-04-24",
        "total_photos": 76,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2033,
        "earth_date": "2018-04-25",
        "total_photos": 6,
        "cameras": [
          "CHEMCAM",
          "NAVCAM"
        ]
      },
      {
        "sol": 2034,
        "earth_date": "2018-04-26",
        "total_photos": 140,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2035,
        "earth_date": "2018-04-27",
        "total_photos": 85,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2036,
        "earth_date": "2018-04-28",
        "total_photos": 59,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2037,
        "earth_date": "2018-04-29",
        "total_photos": 2,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2038,
        "earth_date": "2018-05-01",
        "total_photos": 54,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2039,
        "earth_date": "2018-05-02",
        "total_photos": 64,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2040,
        "earth_date": "2018-05-03",
        "total_photos": 183,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2041,
        "earth_date": "2018-05-04",
        "total_photos": 50,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2042,
        "earth_date": "2018-05-05",
        "total_photos": 121,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2043,
        "earth_date": "2018-05-06",
        "total_photos": 8,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2044,
        "earth_date": "2018-05-07",
        "total_photos": 56,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2045,
        "earth_date": "2018-05-08",
        "total_photos": 66,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2046,
        "earth_date": "2018-05-09",
        "total_photos": 8,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2047,
        "earth_date": "2018-05-10",
        "total_photos": 26,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2048,
        "earth_date": "2018-05-11",
        "total_photos": 76,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2049,
        "earth_date": "2018-05-12",
        "total_photos": 71,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI"
        ]
      },
      {
        "sol": 2050,
        "earth_date": "2018-05-13",
        "total_photos": 33,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 2051,
        "earth_date": "2018-05-14",
        "total_photos": 46,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2052,
        "earth_date": "2018-05-15",
        "total_photos": 28,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2053,
        "earth_date": "2018-05-16",
        "total_photos": 8,
        "cameras": [
          "FHAZ",
          "NAVCAM"
        ]
      },
      {
        "sol": 2054,
        "earth_date": "2018-05-17",
        "total_photos": 27,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2055,
        "earth_date": "2018-05-18",
        "total_photos": 86,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2056,
        "earth_date": "2018-05-19",
        "total_photos": 29,
        "cameras": [
          "CHEMCAM",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2057,
        "earth_date": "2018-05-20",
        "total_photos": 19,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2058,
        "earth_date": "2018-05-21",
        "total_photos": 2,
        "cameras": [
          "FHAZ"
        ]
      },
      {
        "sol": 2059,
        "earth_date": "2018-05-22",
        "total_photos": 46,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2060,
        "earth_date": "2018-05-23",
        "total_photos": 19,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2061,
        "earth_date": "2018-05-24",
        "total_photos": 24,
        "cameras": [
          "CHEMCAM",
          "NAVCAM"
        ]
      },
      {
        "sol": 2062,
        "earth_date": "2018-05-25",
        "total_photos": 28,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2063,
        "earth_date": "2018-05-26",
        "total_photos": 10,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2064,
        "earth_date": "2018-05-27",
        "total_photos": 10,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 2065,
        "earth_date": "2018-05-28",
        "total_photos": 22,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2066,
        "earth_date": "2018-05-29",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2067,
        "earth_date": "2018-05-30",
        "total_photos": 112,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2068,
        "earth_date": "2018-05-31",
        "total_photos": 17,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2069,
        "earth_date": "2018-06-01",
        "total_photos": 16,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 2070,
        "earth_date": "2018-06-02",
        "total_photos": 10,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2071,
        "earth_date": "2018-06-03",
        "total_photos": 74,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2072,
        "earth_date": "2018-06-04",
        "total_photos": 13,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2073,
        "earth_date": "2018-06-05",
        "total_photos": 12,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2074,
        "earth_date": "2018-06-07",
        "total_photos": 8,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2075,
        "earth_date": "2018-06-08",
        "total_photos": 6,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2076,
        "earth_date": "2018-06-09",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2077,
        "earth_date": "2018-06-10",
        "total_photos": 28,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2078,
        "earth_date": "2018-06-11",
        "total_photos": 68,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2079,
        "earth_date": "2018-06-12",
        "total_photos": 1,
        "cameras": [
          "FHAZ"
        ]
      },
      {
        "sol": 2080,
        "earth_date": "2018-06-13",
        "total_photos": 27,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 2081,
        "earth_date": "2018-06-14",
        "total_photos": 80,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 2082,
        "earth_date": "2018-06-15",
        "total_photos": 146,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2083,
        "earth_date": "2018-06-16",
        "total_photos": 47,
        "cameras": [
          "MAHLI"
        ]
      },
      {
        "sol": 2084,
        "earth_date": "2018-06-17",
        "total_photos": 33,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2085,
        "earth_date": "2018-06-18",
        "total_photos": 20,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2086,
        "earth_date": "2018-06-19",
        "total_photos": 64,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2087,
        "earth_date": "2018-06-20",
        "total_photos": 89,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2088,
        "earth_date": "2018-06-21",
        "total_photos": 88,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2089,
        "earth_date": "2018-06-22",
        "total_photos": 30,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2090,
        "earth_date": "2018-06-23",
        "total_photos": 54,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2091,
        "earth_date": "2018-06-24",
        "total_photos": 5,
        "cameras": [
          "FHAZ",
          "NAVCAM"
        ]
      },
      {
        "sol": 2092,
        "earth_date": "2018-06-25",
        "total_photos": 30,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2093,
        "earth_date": "2018-06-26",
        "total_photos": 51,
        "cameras": [
          "CHEMCAM",
          "NAVCAM"
        ]
      },
      {
        "sol": 2094,
        "earth_date": "2018-06-27",
        "total_photos": 31,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2095,
        "earth_date": "2018-06-28",
        "total_photos": 26,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2096,
        "earth_date": "2018-06-29",
        "total_photos": 42,
        "cameras": [
          "CHEMCAM",
          "MARDI",
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 2097,
        "earth_date": "2018-06-30",
        "total_photos": 11,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2098,
        "earth_date": "2018-07-01",
        "total_photos": 36,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2099,
        "earth_date": "2018-07-02",
        "total_photos": 59,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2100,
        "earth_date": "2018-07-03",
        "total_photos": 14,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2101,
        "earth_date": "2018-07-04",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2102,
        "earth_date": "2018-07-05",
        "total_photos": 74,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2103,
        "earth_date": "2018-07-06",
        "total_photos": 3,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 2104,
        "earth_date": "2018-07-07",
        "total_photos": 32,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2105,
        "earth_date": "2018-07-08",
        "total_photos": 212,
        "cameras": [
          "MAST"
        ]
      },
      {
        "sol": 2106,
        "earth_date": "2018-07-09",
        "total_photos": 1,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 2107,
        "earth_date": "2018-07-10",
        "total_photos": 73,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2108,
        "earth_date": "2018-07-11",
        "total_photos": 80,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2109,
        "earth_date": "2018-07-12",
        "total_photos": 110,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2110,
        "earth_date": "2018-07-14",
        "total_photos": 54,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2111,
        "earth_date": "2018-07-15",
        "total_photos": 34,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2112,
        "earth_date": "2018-07-16",
        "total_photos": 20,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2113,
        "earth_date": "2018-07-17",
        "total_photos": 22,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2114,
        "earth_date": "2018-07-18",
        "total_photos": 109,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2115,
        "earth_date": "2018-07-19",
        "total_photos": 68,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2116,
        "earth_date": "2018-07-20",
        "total_photos": 32,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2117,
        "earth_date": "2018-07-21",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2118,
        "earth_date": "2018-07-22",
        "total_photos": 1,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 2119,
        "earth_date": "2018-07-23",
        "total_photos": 98,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2120,
        "earth_date": "2018-07-24",
        "total_photos": 129,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2121,
        "earth_date": "2018-07-25",
        "total_photos": 58,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2122,
        "earth_date": "2018-07-26",
        "total_photos": 8,
        "cameras": [
          "MAHLI"
        ]
      },
      {
        "sol": 2123,
        "earth_date": "2018-07-27",
        "total_photos": 54,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2124,
        "earth_date": "2018-07-28",
        "total_photos": 27,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2125,
        "earth_date": "2018-07-29",
        "total_photos": 38,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2126,
        "earth_date": "2018-07-30",
        "total_photos": 32,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2127,
        "earth_date": "2018-07-31",
        "total_photos": 12,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2128,
        "earth_date": "2018-08-01",
        "total_photos": 16,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2129,
        "earth_date": "2018-08-02",
        "total_photos": 10,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 2130,
        "earth_date": "2018-08-03",
        "total_photos": 31,
        "cameras": [
          "MAST"
        ]
      },
      {
        "sol": 2131,
        "earth_date": "2018-08-04",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2132,
        "earth_date": "2018-08-05",
        "total_photos": 66,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 2133,
        "earth_date": "2018-08-06",
        "total_photos": 20,
        "cameras": [
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 2134,
        "earth_date": "2018-08-07",
        "total_photos": 67,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2135,
        "earth_date": "2018-08-08",
        "total_photos": 17,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2136,
        "earth_date": "2018-08-09",
        "total_photos": 42,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2137,
        "earth_date": "2018-08-10",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2138,
        "earth_date": "2018-08-11",
        "total_photos": 20,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2139,
        "earth_date": "2018-08-12",
        "total_photos": 59,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2140,
        "earth_date": "2018-08-13",
        "total_photos": 33,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2141,
        "earth_date": "2018-08-14",
        "total_photos": 24,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2142,
        "earth_date": "2018-08-15",
        "total_photos": 13,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2143,
        "earth_date": "2018-08-16",
        "total_photos": 18,
        "cameras": [
          "CHEMCAM",
          "NAVCAM"
        ]
      },
      {
        "sol": 2144,
        "earth_date": "2018-08-17",
        "total_photos": 48,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2145,
        "earth_date": "2018-08-18",
        "total_photos": 31,
        "cameras": [
          "CHEMCAM",
          "NAVCAM"
        ]
      },
      {
        "sol": 2146,
        "earth_date": "2018-08-19",
        "total_photos": 66,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2147,
        "earth_date": "2018-08-21",
        "total_photos": 32,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2148,
        "earth_date": "2018-08-22",
        "total_photos": 33,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2149,
        "earth_date": "2018-08-23",
        "total_photos": 20,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2150,
        "earth_date": "2018-08-24",
        "total_photos": 17,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2151,
        "earth_date": "2018-08-25",
        "total_photos": 5,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2152,
        "earth_date": "2018-08-26",
        "total_photos": 23,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2153,
        "earth_date": "2018-08-27",
        "total_photos": 38,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2154,
        "earth_date": "2018-08-28",
        "total_photos": 14,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2155,
        "earth_date": "2018-08-29",
        "total_photos": 20,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2156,
        "earth_date": "2018-08-30",
        "total_photos": 113,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2157,
        "earth_date": "2018-08-31",
        "total_photos": 39,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2158,
        "earth_date": "2018-09-01",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2159,
        "earth_date": "2018-09-02",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2160,
        "earth_date": "2018-09-03",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2161,
        "earth_date": "2018-09-04",
        "total_photos": 79,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2162,
        "earth_date": "2018-09-05",
        "total_photos": 4,
        "cameras": [
          "CHEMCAM",
          "FHAZ"
        ]
      },
      {
        "sol": 2163,
        "earth_date": "2018-09-06",
        "total_photos": 45,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2164,
        "earth_date": "2018-09-07",
        "total_photos": 11,
        "cameras": [
          "CHEMCAM",
          "NAVCAM"
        ]
      },
      {
        "sol": 2165,
        "earth_date": "2018-09-08",
        "total_photos": 34,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2166,
        "earth_date": "2018-09-09",
        "total_photos": 137,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2167,
        "earth_date": "2018-09-10",
        "total_photos": 73,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2168,
        "earth_date": "2018-09-11",
        "total_photos": 88,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2169,
        "earth_date": "2018-09-12",
        "total_photos": 32,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2170,
        "earth_date": "2018-09-13",
        "total_photos": 46,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2171,
        "earth_date": "2018-09-14",
        "total_photos": 22,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2172,
        "earth_date": "2018-09-15",
        "total_photos": 51,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2173,
        "earth_date": "2018-09-16",
        "total_photos": 41,
        "cameras": [
          "MAST"
        ]
      },
      {
        "sol": 2174,
        "earth_date": "2018-09-17",
        "total_photos": 2,
        "cameras": [
          "MAST"
        ]
      },
      {
        "sol": 2199,
        "earth_date": "2018-10-13",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2206,
        "earth_date": "2018-10-20",
        "total_photos": 4,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 2209,
        "earth_date": "2018-10-23",
        "total_photos": 42,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2210,
        "earth_date": "2018-10-24",
        "total_photos": 11,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2211,
        "earth_date": "2018-10-25",
        "total_photos": 50,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 2212,
        "earth_date": "2018-10-26",
        "total_photos": 10,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 2213,
        "earth_date": "2018-10-27",
        "total_photos": 104,
        "cameras": [
          "MAST"
        ]
      },
      {
        "sol": 2214,
        "earth_date": "2018-10-28",
        "total_photos": 42,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2215,
        "earth_date": "2018-10-29",
        "total_photos": 11,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 2216,
        "earth_date": "2018-10-30",
        "total_photos": 15,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 2217,
        "earth_date": "2018-10-31",
        "total_photos": 180,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2218,
        "earth_date": "2018-11-01",
        "total_photos": 163,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2219,
        "earth_date": "2018-11-03",
        "total_photos": 50,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2220,
        "earth_date": "2018-11-04",
        "total_photos": 98,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2221,
        "earth_date": "2018-11-05",
        "total_photos": 58,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2222,
        "earth_date": "2018-11-06",
        "total_photos": 20,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2223,
        "earth_date": "2018-11-07",
        "total_photos": 75,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2224,
        "earth_date": "2018-11-08",
        "total_photos": 15,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2225,
        "earth_date": "2018-11-09",
        "total_photos": 52,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2226,
        "earth_date": "2018-11-10",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2227,
        "earth_date": "2018-11-11",
        "total_photos": 15,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2228,
        "earth_date": "2018-11-12",
        "total_photos": 10,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 2229,
        "earth_date": "2018-11-13",
        "total_photos": 41,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2230,
        "earth_date": "2018-11-14",
        "total_photos": 70,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2231,
        "earth_date": "2018-11-15",
        "total_photos": 58,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2232,
        "earth_date": "2018-11-16",
        "total_photos": 2,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2233,
        "earth_date": "2018-11-17",
        "total_photos": 20,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2234,
        "earth_date": "2018-11-18",
        "total_photos": 11,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 2235,
        "earth_date": "2018-11-19",
        "total_photos": 12,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2236,
        "earth_date": "2018-11-20",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2237,
        "earth_date": "2018-11-21",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2238,
        "earth_date": "2018-11-22",
        "total_photos": 100,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2239,
        "earth_date": "2018-11-23",
        "total_photos": 47,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2240,
        "earth_date": "2018-11-24",
        "total_photos": 34,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2241,
        "earth_date": "2018-11-25",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2242,
        "earth_date": "2018-11-26",
        "total_photos": 60,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2243,
        "earth_date": "2018-11-27",
        "total_photos": 21,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2244,
        "earth_date": "2018-11-28",
        "total_photos": 14,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2245,
        "earth_date": "2018-11-29",
        "total_photos": 90,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2246,
        "earth_date": "2018-11-30",
        "total_photos": 25,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2247,
        "earth_date": "2018-12-01",
        "total_photos": 143,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2248,
        "earth_date": "2018-12-02",
        "total_photos": 59,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2249,
        "earth_date": "2018-12-03",
        "total_photos": 42,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2250,
        "earth_date": "2018-12-04",
        "total_photos": 247,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2251,
        "earth_date": "2018-12-05",
        "total_photos": 31,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2252,
        "earth_date": "2018-12-06",
        "total_photos": 100,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2253,
        "earth_date": "2018-12-07",
        "total_photos": 65,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2254,
        "earth_date": "2018-12-08",
        "total_photos": 130,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2255,
        "earth_date": "2018-12-09",
        "total_photos": 209,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2256,
        "earth_date": "2018-12-11",
        "total_photos": 114,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2257,
        "earth_date": "2018-12-12",
        "total_photos": 115,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2258,
        "earth_date": "2018-12-13",
        "total_photos": 47,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 2259,
        "earth_date": "2018-12-14",
        "total_photos": 106,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2260,
        "earth_date": "2018-12-15",
        "total_photos": 16,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 2261,
        "earth_date": "2018-12-16",
        "total_photos": 15,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2262,
        "earth_date": "2018-12-17",
        "total_photos": 127,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2263,
        "earth_date": "2018-12-18",
        "total_photos": 26,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2264,
        "earth_date": "2018-12-19",
        "total_photos": 21,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2265,
        "earth_date": "2018-12-20",
        "total_photos": 15,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2276,
        "earth_date": "2018-12-31",
        "total_photos": 71,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2277,
        "earth_date": "2019-01-01",
        "total_photos": 14,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2278,
        "earth_date": "2019-01-02",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2279,
        "earth_date": "2019-01-03",
        "total_photos": 17,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 2280,
        "earth_date": "2019-01-04",
        "total_photos": 113,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2281,
        "earth_date": "2019-01-05",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2282,
        "earth_date": "2019-01-06",
        "total_photos": 77,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2283,
        "earth_date": "2019-01-07",
        "total_photos": 55,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2284,
        "earth_date": "2019-01-08",
        "total_photos": 38,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2285,
        "earth_date": "2019-01-09",
        "total_photos": 127,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2286,
        "earth_date": "2019-01-10",
        "total_photos": 8,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2287,
        "earth_date": "2019-01-11",
        "total_photos": 41,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2288,
        "earth_date": "2019-01-12",
        "total_photos": 69,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2289,
        "earth_date": "2019-01-13",
        "total_photos": 30,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2290,
        "earth_date": "2019-01-14",
        "total_photos": 87,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2291,
        "earth_date": "2019-01-15",
        "total_photos": 140,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2292,
        "earth_date": "2019-01-17",
        "total_photos": 26,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2293,
        "earth_date": "2019-01-18",
        "total_photos": 50,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2294,
        "earth_date": "2019-01-19",
        "total_photos": 80,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2295,
        "earth_date": "2019-01-20",
        "total_photos": 72,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2296,
        "earth_date": "2019-01-21",
        "total_photos": 101,
        "cameras": [
          "CHEMCAM",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 2297,
        "earth_date": "2019-01-22",
        "total_photos": 49,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2298,
        "earth_date": "2019-01-23",
        "total_photos": 188,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2299,
        "earth_date": "2019-01-24",
        "total_photos": 204,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2300,
        "earth_date": "2019-01-25",
        "total_photos": 187,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2301,
        "earth_date": "2019-01-26",
        "total_photos": 128,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2302,
        "earth_date": "2019-01-27",
        "total_photos": 18,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2303,
        "earth_date": "2019-01-28",
        "total_photos": 20,
        "cameras": [
          "MAST"
        ]
      },
      {
        "sol": 2304,
        "earth_date": "2019-01-29",
        "total_photos": 10,
        "cameras": [
          "FHAZ",
          "NAVCAM"
        ]
      },
      {
        "sol": 2305,
        "earth_date": "2019-01-30",
        "total_photos": 36,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2306,
        "earth_date": "2019-01-31",
        "total_photos": 33,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2307,
        "earth_date": "2019-02-01",
        "total_photos": 56,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2308,
        "earth_date": "2019-02-02",
        "total_photos": 57,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2309,
        "earth_date": "2019-02-03",
        "total_photos": 11,
        "cameras": [
          "FHAZ",
          "NAVCAM"
        ]
      },
      {
        "sol": 2310,
        "earth_date": "2019-02-04",
        "total_photos": 10,
        "cameras": [
          "MAST"
        ]
      },
      {
        "sol": 2311,
        "earth_date": "2019-02-05",
        "total_photos": 88,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2312,
        "earth_date": "2019-02-06",
        "total_photos": 42,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2313,
        "earth_date": "2019-02-07",
        "total_photos": 43,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 2314,
        "earth_date": "2019-02-08",
        "total_photos": 41,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2315,
        "earth_date": "2019-02-09",
        "total_photos": 8,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2316,
        "earth_date": "2019-02-10",
        "total_photos": 159,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2317,
        "earth_date": "2019-02-11",
        "total_photos": 51,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2318,
        "earth_date": "2019-02-12",
        "total_photos": 126,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2319,
        "earth_date": "2019-02-13",
        "total_photos": 109,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2320,
        "earth_date": "2019-02-14",
        "total_photos": 56,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 2333,
        "earth_date": "2019-02-28",
        "total_photos": 151,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2334,
        "earth_date": "2019-03-01",
        "total_photos": 16,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 2338,
        "earth_date": "2019-03-05",
        "total_photos": 140,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2339,
        "earth_date": "2019-03-06",
        "total_photos": 9,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2346,
        "earth_date": "2019-03-13",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2347,
        "earth_date": "2019-03-14",
        "total_photos": 32,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM"
        ]
      },
      {
        "sol": 2348,
        "earth_date": "2019-03-15",
        "total_photos": 16,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 2349,
        "earth_date": "2019-03-16",
        "total_photos": 21,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2350,
        "earth_date": "2019-03-17",
        "total_photos": 19,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 2351,
        "earth_date": "2019-03-18",
        "total_photos": 38,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2352,
        "earth_date": "2019-03-19",
        "total_photos": 308,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2353,
        "earth_date": "2019-03-20",
        "total_photos": 80,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2354,
        "earth_date": "2019-03-21",
        "total_photos": 21,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM"
        ]
      },
      {
        "sol": 2355,
        "earth_date": "2019-03-22",
        "total_photos": 17,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM"
        ]
      },
      {
        "sol": 2356,
        "earth_date": "2019-03-23",
        "total_photos": 176,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2357,
        "earth_date": "2019-03-24",
        "total_photos": 181,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2358,
        "earth_date": "2019-03-25",
        "total_photos": 75,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2359,
        "earth_date": "2019-03-26",
        "total_photos": 155,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2360,
        "earth_date": "2019-03-27",
        "total_photos": 70,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2361,
        "earth_date": "2019-03-28",
        "total_photos": 171,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2362,
        "earth_date": "2019-03-29",
        "total_photos": 20,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2363,
        "earth_date": "2019-03-30",
        "total_photos": 48,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2364,
        "earth_date": "2019-03-31",
        "total_photos": 145,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2365,
        "earth_date": "2019-04-02",
        "total_photos": 144,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2366,
        "earth_date": "2019-04-03",
        "total_photos": 36,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2367,
        "earth_date": "2019-04-04",
        "total_photos": 53,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2368,
        "earth_date": "2019-04-05",
        "total_photos": 74,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2369,
        "earth_date": "2019-04-06",
        "total_photos": 32,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2370,
        "earth_date": "2019-04-07",
        "total_photos": 31,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2371,
        "earth_date": "2019-04-08",
        "total_photos": 44,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2372,
        "earth_date": "2019-04-09",
        "total_photos": 38,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2373,
        "earth_date": "2019-04-10",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2374,
        "earth_date": "2019-04-11",
        "total_photos": 12,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2375,
        "earth_date": "2019-04-12",
        "total_photos": 44,
        "cameras": [
          "CHEMCAM",
          "NAVCAM"
        ]
      },
      {
        "sol": 2376,
        "earth_date": "2019-04-13",
        "total_photos": 48,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2377,
        "earth_date": "2019-04-14",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2378,
        "earth_date": "2019-04-15",
        "total_photos": 33,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2379,
        "earth_date": "2019-04-16",
        "total_photos": 43,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2380,
        "earth_date": "2019-04-17",
        "total_photos": 53,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2381,
        "earth_date": "2019-04-18",
        "total_photos": 38,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2382,
        "earth_date": "2019-04-19",
        "total_photos": 56,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2384,
        "earth_date": "2019-04-21",
        "total_photos": 55,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2385,
        "earth_date": "2019-04-22",
        "total_photos": 35,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2386,
        "earth_date": "2019-04-23",
        "total_photos": 22,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2387,
        "earth_date": "2019-04-24",
        "total_photos": 10,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2388,
        "earth_date": "2019-04-25",
        "total_photos": 6,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2389,
        "earth_date": "2019-04-26",
        "total_photos": 45,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2390,
        "earth_date": "2019-04-27",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2391,
        "earth_date": "2019-04-28",
        "total_photos": 16,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2392,
        "earth_date": "2019-04-29",
        "total_photos": 21,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2393,
        "earth_date": "2019-04-30",
        "total_photos": 36,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2394,
        "earth_date": "2019-05-01",
        "total_photos": 61,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2395,
        "earth_date": "2019-05-02",
        "total_photos": 14,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2396,
        "earth_date": "2019-05-03",
        "total_photos": 43,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2397,
        "earth_date": "2019-05-04",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2398,
        "earth_date": "2019-05-05",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2399,
        "earth_date": "2019-05-06",
        "total_photos": 39,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2400,
        "earth_date": "2019-05-07",
        "total_photos": 113,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2401,
        "earth_date": "2019-05-09",
        "total_photos": 8,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2402,
        "earth_date": "2019-05-10",
        "total_photos": 89,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2403,
        "earth_date": "2019-05-11",
        "total_photos": 46,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2404,
        "earth_date": "2019-05-12",
        "total_photos": 45,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 2405,
        "earth_date": "2019-05-13",
        "total_photos": 165,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2406,
        "earth_date": "2019-05-14",
        "total_photos": 62,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2407,
        "earth_date": "2019-05-15",
        "total_photos": 138,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2408,
        "earth_date": "2019-05-16",
        "total_photos": 148,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2409,
        "earth_date": "2019-05-17",
        "total_photos": 32,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 2410,
        "earth_date": "2019-05-18",
        "total_photos": 8,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 2411,
        "earth_date": "2019-05-19",
        "total_photos": 14,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2412,
        "earth_date": "2019-05-20",
        "total_photos": 93,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2413,
        "earth_date": "2019-05-21",
        "total_photos": 75,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2414,
        "earth_date": "2019-05-22",
        "total_photos": 126,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2415,
        "earth_date": "2019-05-23",
        "total_photos": 87,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2416,
        "earth_date": "2019-05-24",
        "total_photos": 130,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2417,
        "earth_date": "2019-05-25",
        "total_photos": 24,
        "cameras": [
          "NAVCAM"
        ]
      },
      {
        "sol": 2418,
        "earth_date": "2019-05-26",
        "total_photos": 10,
        "cameras": [
          "CHEMCAM",
          "NAVCAM"
        ]
      },
      {
        "sol": 2419,
        "earth_date": "2019-05-27",
        "total_photos": 12,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2420,
        "earth_date": "2019-05-28",
        "total_photos": 33,
        "cameras": [
          "CHEMCAM",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 2421,
        "earth_date": "2019-05-29",
        "total_photos": 20,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2422,
        "earth_date": "2019-05-30",
        "total_photos": 56,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 2423,
        "earth_date": "2019-05-31",
        "total_photos": 22,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2424,
        "earth_date": "2019-06-01",
        "total_photos": 22,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2425,
        "earth_date": "2019-06-02",
        "total_photos": 167,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2426,
        "earth_date": "2019-06-03",
        "total_photos": 34,
        "cameras": [
          "CHEMCAM",
          "MAHLI"
        ]
      },
      {
        "sol": 2427,
        "earth_date": "2019-06-04",
        "total_photos": 238,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2428,
        "earth_date": "2019-06-05",
        "total_photos": 19,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2429,
        "earth_date": "2019-06-06",
        "total_photos": 175,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2430,
        "earth_date": "2019-06-07",
        "total_photos": 22,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2431,
        "earth_date": "2019-06-08",
        "total_photos": 145,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 2432,
        "earth_date": "2019-06-09",
        "total_photos": 194,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2433,
        "earth_date": "2019-06-10",
        "total_photos": 207,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2434,
        "earth_date": "2019-06-11",
        "total_photos": 6,
        "cameras": [
          "FHAZ"
        ]
      },
      {
        "sol": 2435,
        "earth_date": "2019-06-12",
        "total_photos": 155,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2436,
        "earth_date": "2019-06-13",
        "total_photos": 138,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2437,
        "earth_date": "2019-06-14",
        "total_photos": 273,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2438,
        "earth_date": "2019-06-16",
        "total_photos": 45,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2439,
        "earth_date": "2019-06-17",
        "total_photos": 82,
        "cameras": [
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 2440,
        "earth_date": "2019-06-18",
        "total_photos": 75,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2441,
        "earth_date": "2019-06-19",
        "total_photos": 59,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2442,
        "earth_date": "2019-06-20",
        "total_photos": 96,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2443,
        "earth_date": "2019-06-21",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2444,
        "earth_date": "2019-06-22",
        "total_photos": 2,
        "cameras": [
          "MAHLI"
        ]
      },
      {
        "sol": 2445,
        "earth_date": "2019-06-23",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2446,
        "earth_date": "2019-06-24",
        "total_photos": 10,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2447,
        "earth_date": "2019-06-25",
        "total_photos": 10,
        "cameras": [
          "FHAZ",
          "NAVCAM"
        ]
      },
      {
        "sol": 2448,
        "earth_date": "2019-06-26",
        "total_photos": 175,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2449,
        "earth_date": "2019-06-27",
        "total_photos": 87,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2450,
        "earth_date": "2019-06-28",
        "total_photos": 13,
        "cameras": [
          "CHEMCAM",
          "NAVCAM"
        ]
      },
      {
        "sol": 2451,
        "earth_date": "2019-06-29",
        "total_photos": 28,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "RHAZ"
        ]
      },
      {
        "sol": 2452,
        "earth_date": "2019-06-30",
        "total_photos": 156,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2453,
        "earth_date": "2019-07-01",
        "total_photos": 66,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2454,
        "earth_date": "2019-07-02",
        "total_photos": 85,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2455,
        "earth_date": "2019-07-03",
        "total_photos": 8,
        "cameras": [
          "CHEMCAM"
        ]
      },
      {
        "sol": 2456,
        "earth_date": "2019-07-04",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2457,
        "earth_date": "2019-07-05",
        "total_photos": 20,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2458,
        "earth_date": "2019-07-06",
        "total_photos": 148,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 2459,
        "earth_date": "2019-07-07",
        "total_photos": 44,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM"
        ]
      },
      {
        "sol": 2460,
        "earth_date": "2019-07-08",
        "total_photos": 21,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2461,
        "earth_date": "2019-07-09",
        "total_photos": 50,
        "cameras": [
          "CHEMCAM",
          "NAVCAM"
        ]
      },
      {
        "sol": 2462,
        "earth_date": "2019-07-10",
        "total_photos": 111,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2463,
        "earth_date": "2019-07-11",
        "total_photos": 352,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2464,
        "earth_date": "2019-07-12",
        "total_photos": 233,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2465,
        "earth_date": "2019-07-13",
        "total_photos": 361,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2466,
        "earth_date": "2019-07-14",
        "total_photos": 546,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2467,
        "earth_date": "2019-07-15",
        "total_photos": 114,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2468,
        "earth_date": "2019-07-16",
        "total_photos": 371,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2469,
        "earth_date": "2019-07-17",
        "total_photos": 281,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2470,
        "earth_date": "2019-07-18",
        "total_photos": 216,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2471,
        "earth_date": "2019-07-19",
        "total_photos": 334,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2472,
        "earth_date": "2019-07-20",
        "total_photos": 566,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2473,
        "earth_date": "2019-07-21",
        "total_photos": 208,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2474,
        "earth_date": "2019-07-23",
        "total_photos": 535,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2475,
        "earth_date": "2019-07-24",
        "total_photos": 226,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2476,
        "earth_date": "2019-07-25",
        "total_photos": 353,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2477,
        "earth_date": "2019-07-26",
        "total_photos": 266,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2478,
        "earth_date": "2019-07-27",
        "total_photos": 201,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2479,
        "earth_date": "2019-07-28",
        "total_photos": 431,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2480,
        "earth_date": "2019-07-29",
        "total_photos": 517,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2481,
        "earth_date": "2019-07-30",
        "total_photos": 576,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MARDI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2482,
        "earth_date": "2019-07-31",
        "total_photos": 256,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2483,
        "earth_date": "2019-08-01",
        "total_photos": 240,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2484,
        "earth_date": "2019-08-02",
        "total_photos": 304,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2485,
        "earth_date": "2019-08-03",
        "total_photos": 255,
        "cameras": [
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 2486,
        "earth_date": "2019-08-04",
        "total_photos": 38,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2487,
        "earth_date": "2019-08-05",
        "total_photos": 138,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 2488,
        "earth_date": "2019-08-06",
        "total_photos": 63,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2489,
        "earth_date": "2019-08-07",
        "total_photos": 67,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2490,
        "earth_date": "2019-08-08",
        "total_photos": 16,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2491,
        "earth_date": "2019-08-09",
        "total_photos": 26,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 2492,
        "earth_date": "2019-08-10",
        "total_photos": 334,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2493,
        "earth_date": "2019-08-11",
        "total_photos": 68,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2494,
        "earth_date": "2019-08-12",
        "total_photos": 66,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 2495,
        "earth_date": "2019-08-13",
        "total_photos": 54,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2496,
        "earth_date": "2019-08-14",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2497,
        "earth_date": "2019-08-15",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2498,
        "earth_date": "2019-08-16",
        "total_photos": 76,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2499,
        "earth_date": "2019-08-17",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2500,
        "earth_date": "2019-08-18",
        "total_photos": 12,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 2501,
        "earth_date": "2019-08-19",
        "total_photos": 91,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2502,
        "earth_date": "2019-08-20",
        "total_photos": 66,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 2503,
        "earth_date": "2019-08-21",
        "total_photos": 62,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2504,
        "earth_date": "2019-08-22",
        "total_photos": 106,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2505,
        "earth_date": "2019-08-23",
        "total_photos": 103,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2506,
        "earth_date": "2019-08-24",
        "total_photos": 102,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2507,
        "earth_date": "2019-08-25",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2508,
        "earth_date": "2019-08-26",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2509,
        "earth_date": "2019-08-27",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2510,
        "earth_date": "2019-08-29",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2511,
        "earth_date": "2019-08-30",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2512,
        "earth_date": "2019-08-31",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2513,
        "earth_date": "2019-09-01",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2514,
        "earth_date": "2019-09-02",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2515,
        "earth_date": "2019-09-03",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2516,
        "earth_date": "2019-09-04",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2517,
        "earth_date": "2019-09-05",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2518,
        "earth_date": "2019-09-06",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2519,
        "earth_date": "2019-09-07",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2520,
        "earth_date": "2019-09-08",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2521,
        "earth_date": "2019-09-09",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2522,
        "earth_date": "2019-09-10",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2523,
        "earth_date": "2019-09-11",
        "total_photos": 253,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2524,
        "earth_date": "2019-09-12",
        "total_photos": 119,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2525,
        "earth_date": "2019-09-13",
        "total_photos": 37,
        "cameras": [
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2526,
        "earth_date": "2019-09-14",
        "total_photos": 77,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2527,
        "earth_date": "2019-09-15",
        "total_photos": 40,
        "cameras": [
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2528,
        "earth_date": "2019-09-16",
        "total_photos": 175,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2529,
        "earth_date": "2019-09-17",
        "total_photos": 54,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAHLI",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2530,
        "earth_date": "2019-09-18",
        "total_photos": 125,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2531,
        "earth_date": "2019-09-19",
        "total_photos": 12,
        "cameras": [
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 2532,
        "earth_date": "2019-09-20",
        "total_photos": 74,
        "cameras": [
          "MAST",
          "NAVCAM"
        ]
      },
      {
        "sol": 2534,
        "earth_date": "2019-09-22",
        "total_photos": 65,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2535,
        "earth_date": "2019-09-23",
        "total_photos": 30,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2536,
        "earth_date": "2019-09-24",
        "total_photos": 6,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      },
      {
        "sol": 2537,
        "earth_date": "2019-09-25",
        "total_photos": 11,
        "cameras": [
          "FHAZ",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2538,
        "earth_date": "2019-09-26",
        "total_photos": 13,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "RHAZ"
        ]
      },
      {
        "sol": 2539,
        "earth_date": "2019-09-27",
        "total_photos": 166,
        "cameras": [
          "CHEMCAM",
          "FHAZ",
          "MAST",
          "NAVCAM",
          "RHAZ"
        ]
      },
      {
        "sol": 2540,
        "earth_date": "2019-09-28",
        "total_photos": 4,
        "cameras": [
          "FHAZ",
          "RHAZ"
        ]
      }
    ]
  }
}
""".data(using: .utf8)!

let validSol1JSON = """
{
  "photos": [
    {
      "id": 4477,
      "sol": 1,
      "camera": {
        "id": 22,
        "name": "MAST",
        "rover_id": 5,
        "full_name": "Mast Camera"
      },
      "img_src": "http://mars.jpl.nasa.gov/msl-raw-images/msss/00001/mcam/0001ML0000001000I1_DXXX.jpg",
      "earth_date": "2012-08-07",
      "rover": {
        "id": 5,
        "name": "Curiosity",
        "landing_date": "2012-08-06",
        "launch_date": "2011-11-26",
        "status": "active",
        "max_sol": 2172,
        "max_date": "2018-09-15",
        "total_photos": 341463,
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
      "id": 509233,
      "sol": 1,
      "camera": {
        "id": 22,
        "name": "MAST",
        "rover_id": 5,
        "full_name": "Mast Camera"
      },
      "img_src": "http://mars.jpl.nasa.gov/msl-raw-images/msss/00001/mcam/0001MR0000001000C0_DXXX.jpg",
      "earth_date": "2012-08-07",
      "rover": {
        "id": 5,
        "name": "Curiosity",
        "landing_date": "2012-08-06",
        "launch_date": "2011-11-26",
        "status": "active",
        "max_sol": 2172,
        "max_date": "2018-09-15",
        "total_photos": 341463,
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
      "id": 509234,
      "sol": 1,
      "camera": {
        "id": 22,
        "name": "MAST",
        "rover_id": 5,
        "full_name": "Mast Camera"
      },
      "img_src": "http://mars.jpl.nasa.gov/msl-raw-images/msss/00001/mcam/0001ML0000001000C0_DXXX.jpg",
      "earth_date": "2012-08-07",
      "rover": {
        "id": 5,
        "name": "Curiosity",
        "landing_date": "2012-08-06",
        "launch_date": "2011-11-26",
        "status": "active",
        "max_sol": 2172,
        "max_date": "2018-09-15",
        "total_photos": 341463,
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
      "id": 509235,
      "sol": 1,
      "camera": {
        "id": 22,
        "name": "MAST",
        "rover_id": 5,
        "full_name": "Mast Camera"
      },
      "img_src": "http://mars.jpl.nasa.gov/msl-raw-images/msss/00001/mcam/0001MR0000001000I1_DXXX.jpg",
      "earth_date": "2012-08-07",
      "rover": {
        "id": 5,
        "name": "Curiosity",
        "landing_date": "2012-08-06",
        "launch_date": "2011-11-26",
        "status": "active",
        "max_sol": 2172,
        "max_date": "2018-09-15",
        "total_photos": 341463,
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
      "id": 3778,
      "sol": 1,
      "camera": {
        "id": 24,
        "name": "MAHLI",
        "rover_id": 5,
        "full_name": "Mars Hand Lens Imager"
      },
      "img_src": "http://mars.jpl.nasa.gov/msl-raw-images/msss/00001/mhli/0001MH0000001000I3_DXXX.jpg",
      "earth_date": "2012-08-07",
      "rover": {
        "id": 5,
        "name": "Curiosity",
        "landing_date": "2012-08-06",
        "launch_date": "2011-11-26",
        "status": "active",
        "max_sol": 2172,
        "max_date": "2018-09-15",
        "total_photos": 341463,
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
      "id": 86520,
      "sol": 1,
      "camera": {
        "id": 24,
        "name": "MAHLI",
        "rover_id": 5,
        "full_name": "Mars Hand Lens Imager"
      },
      "img_src": "http://mars.jpl.nasa.gov/msl-raw-images/msss/00001/mhli/0001MH0000002000C0_DXXX.jpg",
      "earth_date": "2012-08-07",
      "rover": {
        "id": 5,
        "name": "Curiosity",
        "landing_date": "2012-08-06",
        "launch_date": "2011-11-26",
        "status": "active",
        "max_sol": 2172,
        "max_date": "2018-09-15",
        "total_photos": 341463,
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
      "id": 86521,
      "sol": 1,
      "camera": {
        "id": 24,
        "name": "MAHLI",
        "rover_id": 5,
        "full_name": "Mars Hand Lens Imager"
      },
      "img_src": "http://mars.jpl.nasa.gov/msl-raw-images/msss/00001/mhli/0001MH0000001000E1_DXXX.jpg",
      "earth_date": "2012-08-07",
      "rover": {
        "id": 5,
        "name": "Curiosity",
        "landing_date": "2012-08-06",
        "launch_date": "2011-11-26",
        "status": "active",
        "max_sol": 2172,
        "max_date": "2018-09-15",
        "total_photos": 341463,
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
      "id": 86522,
      "sol": 1,
      "camera": {
        "id": 24,
        "name": "MAHLI",
        "rover_id": 5,
        "full_name": "Mars Hand Lens Imager"
      },
      "img_src": "http://mars.jpl.nasa.gov/msl-raw-images/msss/00001/mhli/0001MH0000001000E2_DXXX.jpg",
      "earth_date": "2012-08-07",
      "rover": {
        "id": 5,
        "name": "Curiosity",
        "landing_date": "2012-08-06",
        "launch_date": "2011-11-26",
        "status": "active",
        "max_sol": 2172,
        "max_date": "2018-09-15",
        "total_photos": 341463,
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
      "id": 86523,
      "sol": 1,
      "camera": {
        "id": 24,
        "name": "MAHLI",
        "rover_id": 5,
        "full_name": "Mars Hand Lens Imager"
      },
      "img_src": "http://mars.jpl.nasa.gov/msl-raw-images/msss/00001/mhli/0001MH0000002000I1_DXXX.jpg",
      "earth_date": "2012-08-07",
      "rover": {
        "id": 5,
        "name": "Curiosity",
        "landing_date": "2012-08-06",
        "launch_date": "2011-11-26",
        "status": "active",
        "max_sol": 2172,
        "max_date": "2018-09-15",
        "total_photos": 341463,
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
      "id": 86524,
      "sol": 1,
      "camera": {
        "id": 24,
        "name": "MAHLI",
        "rover_id": 5,
        "full_name": "Mars Hand Lens Imager"
      },
      "img_src": "http://mars.jpl.nasa.gov/msl-raw-images/msss/00001/mhli/0001MH0000002000I2_DXXX.jpg",
      "earth_date": "2012-08-07",
      "rover": {
        "id": 5,
        "name": "Curiosity",
        "landing_date": "2012-08-06",
        "launch_date": "2011-11-26",
        "status": "active",
        "max_sol": 2172,
        "max_date": "2018-09-15",
        "total_photos": 341463,
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
      "id": 86525,
      "sol": 1,
      "camera": {
        "id": 24,
        "name": "MAHLI",
        "rover_id": 5,
        "full_name": "Mars Hand Lens Imager"
      },
      "img_src": "http://mars.jpl.nasa.gov/msl-raw-images/msss/00001/mhli/0001MH0000001000I1_DXXX.jpg",
      "earth_date": "2012-08-07",
      "rover": {
        "id": 5,
        "name": "Curiosity",
        "landing_date": "2012-08-06",
        "launch_date": "2011-11-26",
        "status": "active",
        "max_sol": 2172,
        "max_date": "2018-09-15",
        "total_photos": 341463,
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
      "id": 86526,
      "sol": 1,
      "camera": {
        "id": 24,
        "name": "MAHLI",
        "rover_id": 5,
        "full_name": "Mars Hand Lens Imager"
      },
      "img_src": "http://mars.jpl.nasa.gov/msl-raw-images/msss/00001/mhli/0001MH0000001000I2_DXXX.jpg",
      "earth_date": "2012-08-07",
      "rover": {
        "id": 5,
        "name": "Curiosity",
        "landing_date": "2012-08-06",
        "launch_date": "2011-11-26",
        "status": "active",
        "max_sol": 2172,
        "max_date": "2018-09-15",
        "total_photos": 341463,
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
      "id": 2097,
      "sol": 1,
      "camera": {
        "id": 26,
        "name": "NAVCAM",
        "rover_id": 5,
        "full_name": "Navigation Camera"
      },
      "img_src": "http://mars.jpl.nasa.gov/msl-raw-images/proj/msl/redops/ods/surface/sol/00001/opgs/edr/ncam/NLA_397586928EDR_F0010008AUT_04096M_.JPG",
      "earth_date": "2012-08-07",
      "rover": {
        "id": 5,
        "name": "Curiosity",
        "landing_date": "2012-08-06",
        "launch_date": "2011-11-26",
        "status": "active",
        "max_sol": 2172,
        "max_date": "2018-09-15",
        "total_photos": 341463,
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
      "id": 2674,
      "sol": 1,
      "camera": {
        "id": 26,
        "name": "NAVCAM",
        "rover_id": 5,
        "full_name": "Navigation Camera"
      },
      "img_src": "http://mars.jpl.nasa.gov/msl-raw-images/proj/msl/redops/ods/surface/sol/00001/opgs/edr/ncam/NRA_397586928EDR_F0010008AUT_04096M_.JPG",
      "earth_date": "2012-08-07",
      "rover": {
        "id": 5,
        "name": "Curiosity",
        "landing_date": "2012-08-06",
        "launch_date": "2011-11-26",
        "status": "active",
        "max_sol": 2172,
        "max_date": "2018-09-15",
        "total_photos": 341463,
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
      "id": 32445,
      "sol": 1,
      "camera": {
        "id": 26,
        "name": "NAVCAM",
        "rover_id": 5,
        "full_name": "Navigation Camera"
      },
      "img_src": "http://mars.jpl.nasa.gov/msl-raw-images/proj/msl/redops/ods/surface/sol/00001/opgs/edr/ncam/NLA_397586934EDR_F0010008AUT_04096M_.JPG",
      "earth_date": "2012-08-07",
      "rover": {
        "id": 5,
        "name": "Curiosity",
        "landing_date": "2012-08-06",
        "launch_date": "2011-11-26",
        "status": "active",
        "max_sol": 2172,
        "max_date": "2018-09-15",
        "total_photos": 341463,
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
      "id": 49201,
      "sol": 1,
      "camera": {
        "id": 26,
        "name": "NAVCAM",
        "rover_id": 5,
        "full_name": "Navigation Camera"
      },
      "img_src": "http://mars.jpl.nasa.gov/msl-raw-images/proj/msl/redops/ods/surface/sol/00001/opgs/edr/ncam/NRA_397586934EDR_F0010008AUT_04096M_.JPG",
      "earth_date": "2012-08-07",
      "rover": {
        "id": 5,
        "name": "Curiosity",
        "landing_date": "2012-08-06",
        "launch_date": "2011-11-26",
        "status": "active",
        "max_sol": 2172,
        "max_date": "2018-09-15",
        "total_photos": 341463,
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
""".data(using: .utf8)
