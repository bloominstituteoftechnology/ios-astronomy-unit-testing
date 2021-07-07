//
//  URLSession+NetworkLoader.swift
//  Astronomy
//
//  Created by Diante Lewis-Jolley on 6/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

extension URLSession: NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        dataTask(with: request) { (data, response, error) in
            completion(data, response, error)
        }.resume()
    }

    func loadData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        dataTask(with: url) { (data, response, error) in
            completion(data, response, error)
        }.resume()
    }


}
