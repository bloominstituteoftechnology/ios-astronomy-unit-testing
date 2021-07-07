//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Scott Bennett on 10/22/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping( Data?, Error?) -> Void)
    
    func loadData(from url: URL, completion: @escaping( Data?, Error?) -> Void)
        
}

extension URLSession: NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        dataTask(with: request) { (data, _, error) in
            completion(data, error)
            }.resume()
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        dataTask(with: url) { (data, _, error) in
            completion(data, error)
        }.resume()
    }
}
