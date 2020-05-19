//
//  MockLoader.swift
//  AstronomyTests
//
//  Created by Cameron Collins on 5/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

class MockLoader: NetworkDataLoader {
    
    //MARK: - Variables
    let data: Data?
    let response: URLResponse?
    let error: Error?
    let request: URLRequest?
    let url: URL?
    
    //MARK: - Initializer
    init(data: Data?, response: URLResponse?, error: Error?, request: URLRequest?, url: URL?) {
        self.data = data
        self.response = response
        self.error = error
        self.request = request
        self.url = url
    }
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
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


//Data Extension
extension Data {
    static func mockJSONData(with name: String) -> Data {
        let bundle = Bundle(for: MockLoader.self)
        let url = bundle.url(forResource: name, withExtension: "json")!
        return try! Data(contentsOf: url)
    }
}
