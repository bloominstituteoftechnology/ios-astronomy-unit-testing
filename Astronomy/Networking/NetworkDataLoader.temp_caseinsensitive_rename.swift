//
//  NetWorkDataLoader.swift
//  Astronomy
//
//  Created by Lambda_School_Loaner_34 on 3/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
protocol NetworkDataLoader {
    
    func loadData(with request: URLRequest, completion: @escaping (Data?, Error?) -> Void)
    
}

extension URLSession: NetworkDataLoader {
    func loadData(with request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        
        let task = dataTask(with: request) { (data, _, error) in
            completion(data, error)
        }
        task.resume()
    }
}
