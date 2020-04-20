//
//  URLSession+NetworkDataLoader.swift
//  Astronomy
//
//  Created by Wyatt Harrell on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

extension URLSession: NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        dataTask(with: request) { (data, _, error) in
            completion(data, error)
        }.resume()
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        dataTask(with: url) { (data, response, error) in
            completion(data, error)
        }.resume()
    }
}
