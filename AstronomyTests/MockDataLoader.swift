//
//  MockDataLoader.swift
//  AstronomyTests
//
//  Created by macbook on 11/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

class MockDataLoader: NetworkDataLoader {
    
    //Mark: properties
    
    var urlRequest: URLRequest?
    var url: URL?
    var data: Data?
    var error: Error?
    
    
    
    func loadData(from urlRequest: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        self.urlRequest = urlRequest
        
        let dispatchQurlR = DispatchQueue(label: "Queue for URLRequests", qos: .background)
        dispatchQurlR.async {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        self.url = url
        
        let dispatchQurl = DispatchQueue(label: "Queue for URLs", qos: .background)
        dispatchQurl.async {
            completion(self.data, self.error)
        }
    }
    
}
