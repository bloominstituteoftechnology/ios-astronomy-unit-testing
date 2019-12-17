//
//  URLSession+DataLoader.swift
//  Astronomy
//
//  Created by Jon Bash on 2019-12-16.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

extension URLSession: DataLoader {
    func loadData(
        with request: URLRequest,
        completion: @escaping (Result<Data, NetworkError>) -> Void)
    {
        dataTask(with: request) { (data, response, error) in
            if let error = error {
                NSLog(error.localizedDescription)
                completion(.failure(NetworkError.other))
                return
            }
            
            if let response = response as? HTTPURLResponse,
                response.statusCode < 200 || response.statusCode > 299
            {
                NSLog(response.debugDescription)
                completion(.failure(NetworkError.badResponse))
                return
            }
            
            guard let data = data else {
                NSLog(response.debugDescription)
                completion(.failure(NetworkError.noData))
                return
            }
            
            completion(.success(data))
        }.resume()
    }
}
