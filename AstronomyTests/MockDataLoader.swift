//
//  MockDataLoader.swift
//  AstronomyTests
//
//  Created by Ciara Beitel on 10/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

@testable import Astronomy

struct MockDataLoader: NetworkDataLoader {
    var data: Data?
    var error: Error?
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
}
