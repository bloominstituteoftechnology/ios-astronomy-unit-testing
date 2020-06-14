//
//  MockDataLoading.swift
//  AstronomyTests
//
//  Created by Kelson Hartle on 6/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

@testable import Astronomy
class MockDataLoader: NetworkDataLoader { //this will do the work of a url session without actually having a network (internet) url session.
    
    let data: Data?
    let error: Error?
    
    internal init(data: Data?, error: Error?) {
        self.data = data
        self.error = error
    }
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.0005) {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.0005) {
            completion(self.data, self.error)
        }
    }
    
}
