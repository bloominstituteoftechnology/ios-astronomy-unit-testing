//
//  MockLoader.swift
//  AstronomyTests
//
//  Created by Madison Waters on 2/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy



class MockLoader: NetworkDataLoader {
    
    init(data: Data?, error: Error?) {
        self.data = data
        self.error = error
    }
    
    func loadRequestData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        self.request = request
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.error)
        }
    }
    
    func loadURLData(for url: URL, completion: @escaping (Data?, Error?) -> Void) {
        self.url = url
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.error)
        }
    }
    
    let data: Data?
    let error: Error?
    
    private(set) var request: URLRequest? = nil
    private(set) var url: URL? = nil
    
}
