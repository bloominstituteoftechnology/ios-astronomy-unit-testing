//
//  MockLoader.swift
//  AstronomyTests
//
//  Created by Wyatt Harrell on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

class MockLoader: NetworkDataLoader {

    let data: Data?
    let error: Error?
    
    internal init(data: Data?, error: Error?) {
        self.data = data
        self.error = error
    }
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.global(qos: .background).async {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.global(qos: .background).async {
            completion(self.data, self.error)
        }
    }
    
}
