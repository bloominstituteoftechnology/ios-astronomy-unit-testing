//
//  URLSession+NetworkDataLoader.swift
//  Astronomy
//
//  Created by Mark Gerrior on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

extension URLSession: NetworkDataLoader {
    func loadData(from reqeust: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        dataTask(with: reqeust) { (data, nil, error) in
            completion(data, error)
        }.resume()
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        dataTask(with: url) { (data, nil, error) in
            completion(data, error)
        }
    }
}
