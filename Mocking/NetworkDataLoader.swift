//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Joseph Rogers on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation


protocol NetworkDataLoader {
    //URL request loading.
    func loadData(from request: URLRequest, completion: @escaping( Data?, Error?) -> Void)
    //loading data from a URL specifically.
    func loadData(from url: URL, completion: @escaping( Data?, Error?) -> Void)
}
