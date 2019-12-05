//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Dillon P on 12/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation


protocol NetworkDataLoader {
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void)
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void)
    
}


extension URLSession: NetworkDataLoader {
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        <#code#>
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        <#code#>
    }
    
    
}
