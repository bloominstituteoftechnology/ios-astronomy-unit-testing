//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Michael Flowers on 7/1/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
//this protocol will be used to mimic a urlsession.dataTask network call. This is eveident by the parameters and completion handler
protocol NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void)
    
    func loadData(from URL: URL, completion: @escaping (Data?, Error?) -> Void)
}
