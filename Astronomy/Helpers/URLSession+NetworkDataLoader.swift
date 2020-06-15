//
//  URLSession+NetworkDataLoader.swift
//  Astronomy
//
//  Created by Harmony Radley on 6/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

extension URLSession: NetworkDataLoader {
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        <#code#>
    }

    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        <#code#>
    }

    
}
