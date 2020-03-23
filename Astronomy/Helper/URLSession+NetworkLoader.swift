//
//  URLSession+NetworkLoader.swift
//  Astronomy
//
//  Created by Enrique Gongora on 3/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

extension URLSession: NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        self.dataTask(with: request) { (data, _, error) in
            completion(data, error)
        }.resume()
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        self.dataTask(with: url) { (data, _, error) in
            completion(data, error)
        }.resume()
    }
}
