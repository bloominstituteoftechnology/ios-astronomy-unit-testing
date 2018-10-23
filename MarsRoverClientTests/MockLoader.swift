//
//  MockLoader.swift
//  MarsRoverClientTests
//
//  Created by Ilgar Ilyasov on 10/22/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

// This is our mock URLSession

class MockLoader: NetworkDataLoader {
    
    let data: Data?
    let error: Error?
    private(set) var request: URLRequest? = nil
    private(set) var url: URL? = nil
    
    init(data: Data?, error: Error?) {
        self.data = data
        self.error = error
    }
    
    // MARK: - NetworkDataLoader Protocol
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        self.request = request
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        self.url = url
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
}

