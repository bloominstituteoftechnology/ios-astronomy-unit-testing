//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Tobi Kuyoro on 23/03/2020.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
   func loadData(from request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void)
   func loadData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> Void)
}
