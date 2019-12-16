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
        completion: @escaping (Result<Data, Error>) -> Void)
    {
        dataTask(with: request) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            if let response = response as? HTTPURLResponse,
                response.statusCode < 200 || response.statusCode > 299
            {
                completion(.failure(NetworkError.badResponse(response)))
                return
            }
            
            guard let data = data else {
                completion(.failure(NetworkError.noData(response)))
                return
            }
            
            completion(.success(data))
        }.resume()
    }
    
    func loadData(with url: URL, completion: @escaping (Result<Data, Error>) -> Void) {
        let request = URLRequest(url: url)
        loadData(with: request, completion: completion)
    }
}
