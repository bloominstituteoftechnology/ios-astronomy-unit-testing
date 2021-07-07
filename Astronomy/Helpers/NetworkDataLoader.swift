//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Joshua Sharp on 10/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    // Question: What do we need for data in/data out?
    // need back: Data and Error
    // provide: URLRequest
    
    func loadData(with request: URLRequest, completion: @escaping (Data?, Error?) -> Void)
    
    func loadData(from url: URL, completion: @escaping( Data?, Error?) -> Void)
}
