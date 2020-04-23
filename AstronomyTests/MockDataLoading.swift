//
//  MockDataLoading.swift
//  AstronomyTests
//
//  Created by Sal B Amer on 4/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

@testable import Astronomy

class MockDataLoader: NetworkDataLoader {
    
    
      let data : Data?
      let error: Error?
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.020) {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
         DispatchQueue.main.asyncAfter(deadline: .now() + 0.020) {
                   completion(self.data, self.error)
               }
    }
    
    internal init(data: Data?, error: Error?) {
        self.data = data
        self.error = error
    }
    
  
}
