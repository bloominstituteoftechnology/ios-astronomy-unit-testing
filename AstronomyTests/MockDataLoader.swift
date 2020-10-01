//
//  MockDataLoader.swift
//  AstronomyTests
//
//  Created by BrysonSaclausa on 9/30/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

class MockDataLoader: NetworkDataLoader {
    var data: Data?
    var error: Error?
    
    func loadData(with request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        print("loadData")
    }
    
    
   
    
    
    
    
    
    
    
    
    
}
