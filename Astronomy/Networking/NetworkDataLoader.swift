//
//  NetworkDataLoader.swift
//  AstronomyTests
//
//  Created by Austin Cole on 2/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    
    func loadData(from request: URLRequest, completionHandler: @escaping (Data?, Error?) -> Void)
    func loadData(from url: URL, completionHandler: @escaping (Data?, Error?) -> Void)
}

extension URLSession: NetworkDataLoader {
    
    func loadData(from request: URLRequest, completionHandler: @escaping (Data?, Error?) -> Void) {
        let task = self.dataTask(with: request) { (data, _, error) in
            completionHandler(data, error)
        }
        task.resume()
    }
    
    func loadData(from url: URL, completionHandler: @escaping (Data?, Error?) -> Void) {
        let task = self.dataTask(with: url) { (data, _, error) in
            completionHandler(data, error)
        }
        task.resume()
    }
    
    
}
