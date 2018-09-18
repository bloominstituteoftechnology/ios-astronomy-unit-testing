//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Linh Bouniol on 9/17/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataTask {
    func cancelTask()
}

protocol NetworkDataLoader {
//    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void)
//    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void)
    
    @discardableResult func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) -> NetworkDataTask
    @discardableResult func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) -> NetworkDataTask
}

extension URLSessionDataTask: NetworkDataTask {
    func cancelTask() {
        cancel()
    }
}

extension URLSession: NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) -> NetworkDataTask {
        let task = dataTask(with: request) { (data, _, error) in
            completion(data, error)
        }//.resume()
        task.resume()
        return task
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) -> NetworkDataTask {
        let task = dataTask(with: url) { (data, _, error) in
            completion(data, error)
        }//.resume()
        task.resume()
        return task
    }
}

// have all functions return NetworkDataTask so they can be cancelled
