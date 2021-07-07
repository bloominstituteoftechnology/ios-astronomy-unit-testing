//
//  MockDataLoader.swift
//  AstronomyTests
//
//  Created by Michael on 2/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

struct MockDataLoader: NetworkDataLoader {
    
    var data: Data?
    
    var error: Error?
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.error)
        }
    }
}
