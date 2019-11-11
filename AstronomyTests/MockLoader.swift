//
//  MockLoader.swift
//  AstronomyTests
//
//  Created by Jesse Ruiz on 11/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

struct MockLoader: NetworkDataLoader {
    
    var data: Data?
    var error: Error?
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        <#code#>
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        <#code#>
    }
}
