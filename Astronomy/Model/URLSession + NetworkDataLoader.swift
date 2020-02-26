//
//  URLSession + NetworkDataLoader.swift
//  Astronomy
//
//  Created by Kat Milton on 8/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

extension URLSession: NetworkDataLoader {
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        dataTask(with: url) { (data, _, error)  in
            completion(data, error)
            }.resume()
    }
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        dataTask(with: request) { (data, _, error)  in
            completion(data, error)
            }.resume()
        
    }
    
}
