//
//  URLSession+NetworkLoader.swift
//  Astronomy
//
//  Created by Kenny on 2/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

extension URLSession: NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        self.dataTask(with: request) { (data, response, error) in
            completion(data, error)
        }.resume()
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        self.dataTask(with: url) { (data, response, error) in
            completion(data, error)
        }.resume()
    }
    
    
}
