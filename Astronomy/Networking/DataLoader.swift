//
//  DataLoader.swift
//  Astronomy
//
//  Created by Jon Bash on 2019-12-16.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

protocol DataLoader {
    func loadData(
        with request: URLRequest,
        completion: @escaping (Result<Data, Error>) -> Void)
    
    func loadData(
        with url: URL,
        completion: @escaping (Result<Data, Error>) -> Void)
}

// MARK: - Default Implementation

extension DataLoader {
    func loadData(
        with url: URL,
        completion: @escaping (Result<Data, Error>) -> Void)
    {
        let request = URLRequest(url: url)
        loadData(with: request, completion: completion)
    }
}
