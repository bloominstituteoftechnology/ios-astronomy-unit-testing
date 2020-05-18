//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Shawn James on 5/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

// create the protocol
protocol NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping( Data?, Error?) -> Void)
    func loadData(from url: URL, completion: @escaping( Data?, Error?) -> Void)
}
