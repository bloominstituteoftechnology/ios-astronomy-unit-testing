//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Dillon P on 12/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation


protocol NetworkDataLoader {
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void)
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void)
    
}


extension URLSession: NetworkDataLoader {
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        
        let dataTask = URLSession.shared.dataTask(with: request) { (data, _, error) in
            completion(data, error)
        }
        
        dataTask.resume()
        
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        
        let dataTask = URLSession.shared.dataTask(with: url) { (data, _, error) in
            completion(data, error)
        }
        
        dataTask.resume()
    }
}


struct MockLoader: NetworkDataLoader {
    
    var data: Data?
    var error: Error?
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.global().async {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.global().async {
            completion(self.data, self.error)
        }
    }
    
}
