//
//  MockDataLoader.swift
//  AstronomyTests
//
//  Created by BrysonSaclausa on 9/30/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

class MockDataLoader: NetworkDataLoader {
    
    var data: Data?
    var error: Error?
    //Make them call the completion closure asynchronously on the global background queue.
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
