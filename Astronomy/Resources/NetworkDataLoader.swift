//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Sameera Roussi on 6/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void)
    
    func loadData(from url: URL, completion: @escaping( Data?, URLResponse?, Error?) -> Void)
}

