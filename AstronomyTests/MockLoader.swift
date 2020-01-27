//
//  MockLoader.swift
//  AstronomyTests
//
//  Created by Lambda_School_Loaner_218 on 1/27/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

struct MockLoader: NetWorkDataLoader {
    
    var data: Data?
    var response: HTTPURLResponse?
    var error: Error?
    
    
    
    func loadData(from url: URL, completion: @escaping (Data?, HTTPURLResponse?, Error?) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.response, self.error)
        }
    }

    
    func loadData(from request: URLRequest, completion: @escaping (Data?, HTTPURLResponse?, Error?) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.response, self.error)
        }
    }
    
}

