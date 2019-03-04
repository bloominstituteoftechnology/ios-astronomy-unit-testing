//
//  URLSession+NetworkDataLoader.swift
//  Astronomy
//
//  Created by Nelson Gonzalez on 3/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

extension URLSession: NetworkDataLoader {
    
    func loadData(using request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        
        dataTask(with: request) { (data, response, error) in
            completion(data, response, error)
            }.resume()
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        dataTask(with: url) { (data, _, error) in
            completion(data, error)
        }.resume()
    }
}
