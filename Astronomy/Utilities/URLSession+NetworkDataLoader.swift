//
//  URLSession+NetworkDataLoader.swift
//  Astronomy
//
//  Created by Alex Thompson on 2/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

extension URLSession: NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping NetworkCompletion) {
        dataTask(with: request) { possibleData, possibleResponse, possibleError in
            completion(possibleData, possibleResponse as? HTTPURLResponse, possibleError)
        }.resume()
    }
    
    func loadData(from url: URL, completion: @escaping NetworkCompletion) {
        dataTask(with: url) { data, response, possibleError in
            completion(data, response as? HTTPURLResponse, possibleError)
        }.resume()
    }
}

