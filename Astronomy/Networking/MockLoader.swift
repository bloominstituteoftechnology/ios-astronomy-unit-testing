//
//  MockLoader.swift
//  Astronomy
//
//  Created by Josh Kocsis on 8/5/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

struct MockLoader: NetworkDataLoader {
    var data: Data?
    var error: Error?

    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.global().async {
            completion(data, error)
        }
    }

    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        DispatchQueue.global().async {
            completion(data, error)
        }
    }
}
