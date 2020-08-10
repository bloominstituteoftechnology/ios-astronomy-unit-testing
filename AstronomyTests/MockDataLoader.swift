//
//  MockDataLoader.swift
//  AstronomyTests
//
//  Created by Hunter Oppel on 5/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

class MockDataLoader: NetworkDataLoader {
    
    let data: Data?
    let error: Error?
    
    private(set) var request: URLRequest?
    private(set) var url: URL?
    
    internal init(data: Data?, error: Error?) {
        self.data = data
        self.error = error
    }
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        self.request = request
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.95) {
            completion(self.data, self.error)
        }
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        self.url = url
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.95) {
            completion(self.data, self.error)
        }
    }
}

extension Data {
    static func mockData(with name: String) -> Data {
        let bundle = Bundle(for: MockDataLoader.self)
        let url = bundle.url(forResource: name, withExtension: "json")!
        
        return try! Data(contentsOf: url)
    }
}
