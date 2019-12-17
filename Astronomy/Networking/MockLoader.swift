//
//  MockLoader.swift
//  Astronomy
//
//  Created by Jon Bash on 2019-12-16.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MockLoader: DataLoader {
    private(set) var data: Data?
    private(set) var error: Error?
    
    init(data: Data? = nil, error: NetworkError? = nil) {
        self.data = data
        self.error = error
    }
    
    func loadData(
        with request: URLRequest,
        completion: @escaping (Result<Data, NetworkError>) -> Void)
    {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            if let error = self.error {
                NSLog(error.localizedDescription)
                completion(.failure(NetworkError.badData))
                return
            }
            
            guard let data = self.data else {
                self.error = NetworkError.noData
                completion(.failure(NetworkError.noData))
                return
            }
            
            self.data = data
            completion(.success(data))
        }
    }
}
