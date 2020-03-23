//
//  MockLoader.swift
//  AstronomyTests
//
//  Created by scott harris on 3/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

struct MockLoader: NetworkDataLoder {
    var data: Data?
    var error: Error?
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 0.005) {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 0.005) {
            completion(self.data, self.error)
        }
    }
    
}
