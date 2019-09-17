//
//  MockDataLoader.swift
//  AstronomyTests
//
//  Created by Luqmaan Khan on 9/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

class MockDataLoader: NetworkDataLoader {
    
    var request: URLRequest?
    var data: Data?
    var error: Error?
    var url: URL?
    
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
