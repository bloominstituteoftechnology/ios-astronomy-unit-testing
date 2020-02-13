//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Alex Thompson on 2/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader : URLSession {
    
    func loadData(request: URLRequest, completion: @escaping( Data?, Error?) -> Void) 
    
    func loadData(from url: URL, completion: @escaping( Data?, Error?) -> Void)
}
