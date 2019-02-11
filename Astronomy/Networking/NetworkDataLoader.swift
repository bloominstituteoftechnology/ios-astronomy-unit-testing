//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Benjamin Hakes on 2/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping( Data?, Error?) -> Void)
    func loadData(from url: URL, completion: @escaping( Data?, Error?) -> Void)
    
}

extension URLSession: NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        let task = self.dataTask(with: request) { (data, _ , error ) in
            completion(data, error)
        }
        task.resume()
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        let request = URLRequest(url: url)
        let task = self.dataTask(with: request) { (data, _ , error ) in
            completion(data, error)
        }
        task.resume()
    }
    
    
}
