//
//  MockDataLoader.swift
//  AstronomyTests
//
//  Created by Kobe McKee on 6/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

struct MockDataLoader: NetworkDataLoader {
    
    
    let data: Data?
    let response: URLResponse?
    let error: Error?
    
    init(data: Data? = nil, response: URLResponse? = nil, error: Error? = nil) {
        self.data = data
        self.error = error
        self.response = response
    }
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.response, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.response, self.error)
        }
    }
    
    
}
