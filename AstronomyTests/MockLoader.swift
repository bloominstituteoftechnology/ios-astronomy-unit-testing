//
//  MockLoader.swift
//  AstronomyTests
//
//  Created by Moses Robinson on 3/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

struct MockLoader: NetworkDataLoader {
    
    init(data: Data?, error: Error?) {
        (self.data, self.error) = (data, error)
    }
    
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
    
    let data: Data?
    let error: Error?
}
