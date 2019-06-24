//
//  URLSession+NetworkDataLoader.swift
//  Astronomy
//
//  Created by Mitchell Budge on 6/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

extension URLSession: NetworkDataLoader {
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        URLSession.shared.dataTask(with: request) { (data, _, error) in
            if let error = error {
                completion(nil, nil, error)
                return
            }
            guard let data = data else {
                completion(nil, nil, NSError(domain: "Corrupt Data", code: -1))
                return
            }
            completion(data, nil, nil)
        }.resume()
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            guard let data = data else {
                completion(nil, NSError(domain: "Corrupt Data", code: -1))
                return
            }
            completion(data, nil)
        }.resume()
    }
}
