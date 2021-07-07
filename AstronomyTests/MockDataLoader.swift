//
//  MockDataLoader.swift
//  AstronomyTests
//
//  Created by Joshua Sharp on 10/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

class MockDataLoader: NetworkDataLoader {
    
    
    var URL: URL?
    var request: URLRequest?
    var data: Data?
    var error: Error?
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        self.URL = url
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
    
    func loadData(with request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        self.request = request
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
}
