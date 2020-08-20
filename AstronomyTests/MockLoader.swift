//
//  MockLoader.swift
//  AstronomyTests
//
//  Created by Chad Rutherford on 1/27/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

struct MockLoader: NetworkDataLoader {
    
    var data: Data?
    var response: HTTPURLResponse?
    var error: Error?
    
    func loadData(from request: URLRequest, completion: @escaping NetworkCompletion) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.response, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping NetworkCompletion) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.response, self.error)
        }
    }
}
