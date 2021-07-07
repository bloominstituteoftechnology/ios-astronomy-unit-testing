//
//  MockDataLoader.swift
//  AstronomyTests
//
//  Created by Chris Dobek on 5/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

class MockDataLoader: NetworkDataLoader {
    
    // MARK: - Properties
    let data: Data?
    let error: Error?
    
    internal init(data: Data?, error: Error?) {
        self.data = data
        self.error = error
    }
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 0.05) {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 0.05) {
            completion(self.data, self.error)
        }
    }
    
    
}
