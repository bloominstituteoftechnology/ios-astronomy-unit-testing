//
//  MockLoader.swift
//  AstronomyTests
//
//  Created by Lambda_School_Loaner_268 on 3/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

struct MockLoader: NetworkDataLoader {
    
    var data: Data?
    var error: Error?
    
    
    init(data: Data?, error: Error?) {
        self.data = data
        self.error = error
    }
    
    
    
    func loadData(using request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.main.async {
            completion(self.data, self.error)
        }
    }
    
    
}
