//
//  NetworkSession.swift
//  Astronomy
//
//  Created by Shawn Gee on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkSession {
    func networkDataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> NetworkSessionDataTask
    func networkDataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> NetworkSessionDataTask
}

protocol NetworkSessionDataTask {
    func resume()
    func cancel()
}

extension URLSession: NetworkSession {
    func networkDataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> NetworkSessionDataTask {
        let dataTask: URLSessionDataTask = self.dataTask(with: request, completionHandler: completionHandler)
        return dataTask
    }
    func networkDataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> NetworkSessionDataTask {
        let dataTask: URLSessionDataTask = self.dataTask(with: url, completionHandler: completionHandler)
        return dataTask
    }
}

extension URLSessionDataTask: NetworkSessionDataTask {}
