//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Chris Gonzales on 3/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation


protocol NetworkDataLoader {
    
    func loadData(from request: URLRequest, completion: @escaping(Data?, Error?) -> Void)
    func loadData(from url: URL, completion: @escaping(Data?, Error?) -> Void)
}
