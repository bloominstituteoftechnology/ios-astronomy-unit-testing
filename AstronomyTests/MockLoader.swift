//
//  MockLoader.swift
//  AstronomyTests
//
//  Created by Jesse Ruiz on 11/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

class MockLoader: NetworkDataLoader {
    
    var url: URL?
    var request: URLRequest?
    var data: Data?
    var error: Error?
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        self.request = request
        DispatchQueue.global(qos: .background).async {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        self.url = url
        DispatchQueue.global(qos: .background).async {
            completion(self.data, self.error)
        }
    }
}
