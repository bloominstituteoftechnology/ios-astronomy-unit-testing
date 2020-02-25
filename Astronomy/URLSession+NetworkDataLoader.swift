//
//  URLSession+NetworkDataLoader.swift
//  Astronomy
//
//  Created by Jorge Alvarez on 2/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

/*
 It should include two methods, func loadData(from request: URLRequest, completion: @escaping( Data?, Error?) -> Void), and func loadData(from url: URL, completion: @escaping( Data?, Error?) -> Void).
 */

//extension URLSession: NetworkDataLoader {
//    
//    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
//        dataTask(with: request) { (data, _, error) in
//            completion(data, error)
//        }.resume()
//    }
//    
//    // (from: URLRequest(url: url), completion: completion)
//    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
//        
//        loadData(from: URLRequest(url: url), completion: completion)
//    }
//}
