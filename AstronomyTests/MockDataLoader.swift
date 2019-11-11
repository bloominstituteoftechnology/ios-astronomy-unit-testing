//
//  MockDataLoader.swift
//  AstronomyTests
//
//  Created by Gi Pyo Kim on 11/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

class MockDataLoader: NetworkDataLoader {
    var request: URLRequest?
    var url: URL?
    var data: Data?
    var error: Error?
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        self.url = url
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        self.request = request
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
}
