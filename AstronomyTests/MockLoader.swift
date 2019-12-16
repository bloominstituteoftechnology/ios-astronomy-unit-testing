//
//  MockLoader.swift
//  AstronomyTests
//
//  Created by Alex Shillingford on 12/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

struct MockLoader: NetworkDataLoader {
    var data: Data?
    var error: Error?
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        let queue = DispatchQueue.global(qos: .background)
        queue.async {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        let queue = DispatchQueue.global(qos: .background)
        queue.async {
            completion(self.data, self.error)
        }
    }
    
    
}
