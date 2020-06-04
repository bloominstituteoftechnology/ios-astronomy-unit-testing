//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Elizabeth Thomas on 6/3/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    
    func loadData(from request: URLRequest, completion: @escaping( Data?, URLResponse?, Error?) -> Void)
    
    func loadData(from url: URL, completion: @escaping( Data?, URLResponse?, Error?) -> Void)
    
}

extension URLSession : NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        let dataTask = self.dataTask(with: request, completionHandler: completion)
        dataTask.resume()
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        let dataTask = self.dataTask(with: url, completionHandler: completion)
        dataTask.resume()
    }
}

class MockURLSession : NetworkDataLoader {
    
    let data: Data?
    let error: Error?
    
    init(data: Data?, error: Error?) {
        self.data = data
        self.error = error
    }
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        DispatchQueue.global().async {
            completion(self.data, nil, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        DispatchQueue.global().async {
            completion(self.data, nil, self.error)
        }
    }
}


