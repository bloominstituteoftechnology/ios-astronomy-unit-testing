//
//  MockDataLoading.swift
//  AstronomyTests
//
//  Created by Lambda_School_Loaner_259 on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

class MockDataLoader: NetworkDataLoader {
    
    let data: Data?
    let response: URLResponse?
    let error: Error?
    
    internal init(data: Data?, response: URLResponse?, error: Error?) {
        self.data = data
        self.response = response
        self.error = error
    }
    
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.005) {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.005) {
            completion(self.data, self.response, self.error)
        }
    }
}
