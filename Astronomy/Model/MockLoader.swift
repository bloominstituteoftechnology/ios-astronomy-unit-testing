//
//  MockLoader.swift
//  Astronomy
//
//  Created by denis cedeno on 4/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

struct MockLoader: NetworkDataLoader {
    
    let data: Data
    init(data: Data) {
        self.data = data
    }
    
    var error: Error?
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
                DispatchQueue.global().async {
                    
                    completion(self.data, self.error)
                }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
                DispatchQueue.global().async {
                    
                    completion(self.data, self.error)
                }
    }
    
    
}
