//
//  NetworkError.swift
//  Astronomy
//
//  Created by Jon Bash on 2019-12-16.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

enum NetworkError: Error, Equatable {
    case badData
    case noData
    case badResponse
    case noDecode
    case noEncode
    case other
}
