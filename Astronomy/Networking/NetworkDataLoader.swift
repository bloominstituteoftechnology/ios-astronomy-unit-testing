//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Jonathan Ferrer on 6/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping(Data?, Error?) -> Void)
    func loadData(from url: URL, completion: @escaping(Data?, Error?) -> Void)
}

extension URLSession: NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {

        URLSession.shared.dataTask(with: request) { (data, _, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            guard let data = data else {
                completion(nil, NSError(domain: "Error laoding data", code: -1))
                return
            }
            completion(data, error)
        }.resume()

    }

    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {

        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            guard let data = data else {
                completion(nil, NSError(domain: "Error loading data", code: -1))
                return
            }
            completion(data, error)
        }.resume()
    }


}
