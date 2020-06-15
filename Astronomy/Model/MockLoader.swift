//
//  MockLoader.swift
//  Astronomy
//
//  Created by Matthew Martindale on 6/2/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

class MockLoader: NetworkDataLoader {
    
    let data: Data?
    let error: Error?
    
    init(data: Data?, error: Error?) {
        self.data = data
        self.error = error
    }
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        DispatchQueue.global().async {
            completion(self.data, nil, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        DispatchQueue.global().async {
            completion(self.data, nil, self.error)
        }
    }
}
