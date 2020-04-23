//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Jessie Ann Griffin on 4/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping( Data?, Error?) -> Void)
    func loadData(from url: URL, completion: @escaping( Data?, Error?) -> Void)
}

extension URLSession: NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        let dataTask = self.dataTask(with: request) { possibleData, _, possibleError in
            completion(possibleData, possibleError)
        }
        dataTask.resume()
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        let dataTask = self.dataTask(with: url) { possibleData, _, possibleError in
            completion(possibleData, possibleError)
        }
        dataTask.resume()
    }
}
