//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Nelson Gonzalez on 3/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {

    func loadData(using request: URLRequest, completion: @escaping(Data?, Error?) -> Void)
    
    func loadData(from url: URL, completion: @escaping( Data?, Error?) -> Void)
}
