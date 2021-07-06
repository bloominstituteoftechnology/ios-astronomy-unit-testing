//
//  MockLoader.swift
//  AstronomyTests
//
//  Created by Isaac Lyons on 11/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

class MockLoader: NetworkDataLoader {
    
    var request: URLRequest?
    var data: Data?
    var error: Error?
    
    func loadData(with request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        self.request = request
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        self.request = URLRequest(url: url)
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
    
}
