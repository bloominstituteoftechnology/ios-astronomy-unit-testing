//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Kenneth Jones on 9/30/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    // Question: What do we need for data in/data out? (Search)
    // Input: URL Request
    // Output: Data or an error
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void)
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void)
}
