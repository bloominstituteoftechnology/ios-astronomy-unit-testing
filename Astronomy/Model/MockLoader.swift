//
//  MockLoader.swift
//  Astronomy
//
//  Created by David Wright on 4/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

struct MockLoader: NetworkDataLoader {
    
//    init(data: Data, error: Error) {
//        self.data = data
//        self.error = error
//    }
    
    let data: Data?
    let error: Error?
    
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
