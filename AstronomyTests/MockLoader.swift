//
//  MockLoader.swift
//  AstronomyTests
//
//  Created by Daniela Parra on 10/22/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

struct MockLoader: NetworkDataLoader{
    
    init(data: Data?, error: Error?) {
        self.data = data
        self.error = error
    }
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.error)
        }
    }
    
    let data: Data?
    let error: Error?
}
