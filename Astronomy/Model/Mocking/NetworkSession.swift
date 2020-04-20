//
//  NetworkSession.swift
//  Astronomy
//
//  Created by Shawn Gee on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkSession {
    func dataTask(with request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) -> NetworkSessionDataTask
}

protocol NetworkSessionDataTask {
    func resume()
    func cancel()
}

extension URLSession: NetworkSession {
    func dataTask(with request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) -> NetworkSessionDataTask {
        let dataTask: URLSessionDataTask = self.dataTask(with: request, completionHandler: completion)
        return dataTask
    }
}

extension URLSessionDataTask: NetworkSessionDataTask {}
