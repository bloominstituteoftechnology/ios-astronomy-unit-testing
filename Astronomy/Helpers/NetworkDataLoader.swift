//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Ufuk Türközü on 23.03.20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    func loadData(using request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void)
    
    func loadData(from url: URL, completion: @escaping(Data?, Error?) -> Void)
}
