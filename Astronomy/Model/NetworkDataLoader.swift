//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Mark Gerrior on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    func loadData(from reqeust: URLRequest, completion: @escaping (Data?, Error?) -> Void)

    func loadData(from url: URL, completion: @escaping( Data?, Error?) -> Void)
}
