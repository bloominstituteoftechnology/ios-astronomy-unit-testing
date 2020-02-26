//
//  MockDataLoader.swift
//  AstronomyTests
//
//  Created by Kat Milton on 8/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

class MockDataLoader: NetworkDataLoader {
    
    var request: URLRequest?
    var data: Data?
    var error: Error?

    init(data: Data?, error: Error?) {
        self.data = data
        self.error = error
    }
    
    // Takes in URL and loads data
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        self.request = URLRequest(url: url)
        DispatchQueue.global().async {
            completion(self.data, self.error)
        }
    }
    
    // Takes in URL Request and loads data
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        self.request = request
        DispatchQueue.global().async {
            completion(self.data, self.error)
        }
    }
    
}
