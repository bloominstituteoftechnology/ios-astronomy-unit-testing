//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Lambda_School_Loaner_241 on 6/3/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping(Data?, Error?)->Void)
    
    func loadData(from url: URL, completion: @escaping(Data?, Error?)->Void)

    
    
    
    
}

extension URLSession: NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        <#code#>
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
        <#code#>
    }
    
    
}
