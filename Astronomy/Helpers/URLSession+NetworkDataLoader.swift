//
//  URLSession+NetworkDataLoader.swift
//  Astronomy
//
//  Created by Lambda_School_Loaner_218 on 1/27/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

extension URLSession: NetWorkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, HTTPURLResponse?, Error?) -> Void) {
        dataTask(with: request) { (data, response, error) in
            completion(data,response as? HTTPURLResponse,error)
        }.resume()
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, HTTPURLResponse?, Error?) -> Void) {
        dataTask(with: url) { (data, response , error) in
            completion(data, response as? HTTPURLResponse, error)
        }.resume()
    }
}
