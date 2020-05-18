//
//  MockDataLoader.swift
//  AstronomyTests
//
//  Created by Bhawnish Kumar on 5/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

struct MockDataLoader: NetworkDataLoader {
  
    var data: Data?
       var error: Error?
    
    internal init(data: Data? = nil, error: Error? = nil) {
        self.data = data
        self.error = error
    }
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
          DispatchQueue.main.asyncAfter(deadline: .now() + 0.005 /* ms */) {
              completion(self.data, self.error)
          }
      }
      
      func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
          DispatchQueue.main.asyncAfter(deadline: .now() + 0.005 /* ms */) {
              completion(self.data, self.error)
          }
      }
   
}

