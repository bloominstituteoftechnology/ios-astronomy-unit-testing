//
//  MockLoader.swift
//  AstronomyUnitTests
//
//  Created by Diante Lewis-Jolley on 6/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

struct MockLoader: NetworkDataLoader {

    let data: Data?
    let response: URLResponse?
    let error: Error?

    init(data: Data?, response: URLResponse?, error: Error?) {
        self.data = data
        self.response = response
        self.error = error
    }




    func loadData(from request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.response, self.error)
        }
    }

    func loadData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 1) {
            completion(self.data, self.response, self.error)
        }
    }


}
