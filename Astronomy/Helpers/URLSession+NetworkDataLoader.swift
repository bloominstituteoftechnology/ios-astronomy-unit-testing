//
//  URLSession+NetworkDataLoader.swift
//  Astronomy
//
//  Created by BrysonSaclausa on 9/30/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

extension URLSession: NetworkDataLoader {
    func loadData(with request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        //TO DO:
        let task = dataTask(with: request) { (data, response, error) in
            completion(data, response, error)
        }
        task.resume()
    }
    
    
    
}
