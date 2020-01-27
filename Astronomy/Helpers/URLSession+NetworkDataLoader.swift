//
//  URLSession+NetworkDataLoader.swift
//  Astronomy
//
//  Created by Chad Rutherford on 1/27/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

extension URLSession: NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping NetworkCompletion) {
        dataTask(with: request) { data, response, error in
            completion(data, response as? HTTPURLResponse, error)
        }.resume()
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, HTTPURLResponse?, Error?) -> ()) {
        dataTask(with: url) { data, response, error in
            completion(data, response as? HTTPURLResponse, error)
        }.resume()
    }
}
