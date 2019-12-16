//
//  MockLoader.swift
//  Astronomy
//
//  Created by Jon Bash on 2019-12-16.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct MockLoader: DataLoader {
    private(set) var data: Data?
    private(set) var error: Error?
    
    init(data: Data? = nil, error: Error? = nil) {
        self.data = data
        self.error = error
    }
    
    func loadData(
        with request: URLRequest,
        completion: @escaping (Result<Data, Error>) -> Void)
    {
        if let error = error {
            completion(.failure(error))
            return
        }
        
        guard let data = data else {
            completion(.failure(NetworkError.unknown))
            return
        }
        
        completion(.success(data))
    }
}
