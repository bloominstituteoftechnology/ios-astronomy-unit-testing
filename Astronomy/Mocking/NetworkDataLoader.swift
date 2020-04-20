//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Tobi Kuyoro on 20/04/2020.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void)
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void)
}
