//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Bradley Diroff on 5/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    func loadData(using request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void)
    
    func loadData(from url: URL, completion: @escaping( Data?, Error?) -> Void)
}

extension URLSession: NetworkDataLoader {
    func loadData(using request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        dataTask(with: request) { (data, response, error) in
            completion(data, response, error)
        }.resume()
    }
    
    func loadData(from url: URL, completion: @escaping( Data?, Error?) -> Void) {
        dataTask(with: url) { (data, response, error) in
            completion(data, error)
        }.resume()
    }
}
