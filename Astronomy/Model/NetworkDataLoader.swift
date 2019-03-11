//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Jocelyn Stuart on 3/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation


protocol NetworkDataLoader {
    
    func loadData(with url: URL, completion: @escaping (Data?, Error?) -> Void)
    func loadData(with request: URLRequest, completion: @escaping (Data?, Error?) -> Void)
    
}

extension URLSession: NetworkDataLoader {
    func loadData(with url: URL, completion: @escaping (Data?, Error?) -> Void) {
        
        dataTask(with: url) { (data, _, error) in
            completion(data, error)
            }.resume()
        
    }
    
    func loadData(with request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        dataTask(with: request) { (data, _, error) in
            completion(data, error)
            }.resume()
    }
    
}
