//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Ian French on 8/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    func loadData(using request: URLRequest, completion: @escaping(Data?, Error?) -> Void)

    func loadData(using url: URL, completion: @escaping(Data? , Error?) -> Void)
}


extension URLSession: NetworkDataLoader {

    func loadData(using url: URL, completion: @escaping (Data?, Error?) -> Void) {
           dataTask(with: url) { (data, _, error) in
               completion(data, error)
           }
           .resume()
       }

    func loadData(using request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        dataTask(with: request) { (data, _, error) in
            completion(data, error)
        }
     .resume()
    }

}
