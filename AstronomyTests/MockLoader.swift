//
//  MockLoader.swift
//  AstronomyTests
//
//  Created by Morgan Smith on 8/6/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

struct MockLoader: NetworkDataLoader {
    let data: Data?
    let error: Error?

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


}
