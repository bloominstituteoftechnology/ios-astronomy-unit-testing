//
//  NetworkError.swift
//  Astronomy
//
//  Created by Jon Bash on 2019-12-16.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case badData
    case noData(URLResponse?)
    case badResponse(URLResponse)
    case noDecode
    case noEncode
    case unknown
}
