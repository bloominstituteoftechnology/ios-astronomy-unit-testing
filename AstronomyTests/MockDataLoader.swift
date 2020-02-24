//
//  MockDataLoader.swift
//  AstronomyTests
//
//  Created by Kenny on 2/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

struct MockDataLoader: NetworkDataLoader {
    let data: Data?
    let error: Error?
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.error)
        }
    }
}
