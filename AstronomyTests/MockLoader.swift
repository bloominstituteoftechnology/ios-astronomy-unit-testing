//
//  MockLoader.swift
//  AstronomyTests
//
//  Created by Michael Flowers on 7/1/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
@testable import Astronomy

//Dir: Add test functions for the things you want to test. You should test at least fetchMarsRover() and fetchPhotos(). Create a struct that conforms to the NetworkDataLoader protocol
struct MockLoader: NetworkDataLoader {
    let data: Data?
    let response: URLResponse?
    let error: Error?
    
    
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        <#code#>
    }
    
    func loadData(from URL: URL, completion: @escaping (Data?, Error?) -> Void) {
        <#code#>
    }
    
    
}
