//
//  MockDataLoader.swift
//  AstronomyTests
//
//  Created by Scott Bennett on 10/22/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

class MockDataLoader: NetworkDataLoader {
    
    init(data: Data?, error: Error?) {
        self.data = data
        self.error = error
    }
    
    // Instead of using the URLSesion, it will just return the data that we give it instead of performing a data task to get the data
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        self.request = request
        
        // Simulate an asynchronous netwrok call
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping( Data?, Error?) -> Void) {
        self.url = url
        
        // Simulate an asynchronous netwrok call
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.error)
        }
        
    }
    
    let data: Data?
    let error: Error?
    
    private(set) var request: URLRequest? = nil
    private(set) var url: URL? = nil

}
