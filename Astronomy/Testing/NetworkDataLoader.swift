//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Cameron Collins on 5/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

//NetworkDataLoader Protocol
protocol NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping(Data?, Error?) -> Void)
    
    func loadData(from url: URL, completion: @escaping(Data?, Error?) -> Void)
}

//NetworkDataLoader Extensions
extension URLSession: NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        dataTask(with: request) { (data, response, error) in
            completion(data, error)
        }.resume()
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        dataTask(with: url) { (data, response, error) in
            completion(data, error)
        }.resume()
    }
}

