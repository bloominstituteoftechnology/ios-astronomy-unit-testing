//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Bradley Diroff on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    func loadData(using request:URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void)
}
