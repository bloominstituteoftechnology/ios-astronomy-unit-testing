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
    let response: URLResponse?
    let error: Error?
    
    internal init(data: Data?, response: URLResponse?, error: Error?) {
        self.data = data
        self.response = response
        self.error = error
    }
    
    func loadData(using request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.005) { //this is not recomended in a general sense as a you can not stop it but a timer you can stop
            completion(self.data, self.response, self.error)
            
        }
    }
}
