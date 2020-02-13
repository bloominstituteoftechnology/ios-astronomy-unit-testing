//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Alex Thompson on 2/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

typealias NetworkCompletion = (Data?, HTTPURLResponse?, Error?) -> ()

protocol NetworkDataLoader {
    
    func loadData(from request: URLRequest, completion: @escaping NetworkCompletion)
    
    func loadData(from url: URL, completion: @escaping NetworkCompletion)
}
