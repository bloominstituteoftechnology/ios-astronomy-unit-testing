//
//  MockLoader.swift
//  AstronomyTests
//
//  Created by Lambda_School_Loaner_204 on 12/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

@testable import Astronomy

struct MockLoader: NetworkDataLoader {
    
    var data: Data?
    var error: Error?
    
    init(data: Data? = nil, error: Error? = nil) {
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
