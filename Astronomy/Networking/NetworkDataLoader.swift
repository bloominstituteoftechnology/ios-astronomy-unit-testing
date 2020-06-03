//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Matthew Martindale on 6/2/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void)
    func loadData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void)
}

extension URLSession: NetworkDataLoader {
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        let dataTask = self.dataTask(with: request, completionHandler: completion)
        dataTask.resume()
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        let dataTask = self.dataTask(with: url, completionHandler: completion)
        dataTask.resume()
    }
    
    
}
