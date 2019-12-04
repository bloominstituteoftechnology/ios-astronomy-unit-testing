//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by John Kouris on 12/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void)
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void)
}

extension URLSession: NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        let dataTask = URLSession.shared.dataTask(with: request) { (data, _, error) in
            completion(data, error)
        }
        dataTask.resume()
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        let dataTask = URLSession.shared.dataTask(with: url) { (data, _, error) in
            completion(data, error)
        }
        dataTask.resume()
    }
}
