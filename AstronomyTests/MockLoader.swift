//
//  MockLoader.swift
//  AstronomyTests
//
//  Created by Nick Nguyen on 3/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

struct MockLoader : NetworkDataLoader {
    
   private let data: Data?
    private let error: Error?
    
    
    internal init(data: Data?, error: Error?) {
        self.data = data
        self.error = error
    }
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 0.005) {
            completion(self.data,self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 0.005) {
            completion(self.data,self.error)
        }
    }
    
    
}
