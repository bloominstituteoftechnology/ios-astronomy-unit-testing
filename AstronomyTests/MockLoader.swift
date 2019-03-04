//
//  MockLoader.swift
//  AstronomyTests
//
//  Created by Nelson Gonzalez on 3/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

@testable import Astronomy

struct MockLoader: NetworkDataLoader {
    
    let data: Data?
    let error: Error?
    
    
    func loadData(using request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
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
