//
//  MockDataLoading.swift
//  AstronomyTests
//
//  Created by Mark Poggi on 5/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

class MockDataLoader: NetworkDataLoader {


    let data: Data?
    let response: URLResponse?
    let error: Error?

    private(set) var request: URLRequest?

    internal init(data: Data?, response: URLResponse?, error: Error?) {
        self.data = data
        self.response = response
        self.error = error
    }

    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {

        self.request = request

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.005) {
            completion(self.data, self.error)
        }
    }

    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {

           DispatchQueue.main.asyncAfter(deadline: .now() + 0.005) {
               completion(self.data, self.error)
           }
       }
}

extension Data {
    static func mockJSONData(with name: String) -> Data {
        let bundle = Bundle(for: MockDataLoader.self)
        let url = bundle.url(forResource: name, withExtension: "json")!
        return try! Data(contentsOf: url)
    }
}



