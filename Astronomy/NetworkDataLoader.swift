//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Lambda_School_Loaner_259 on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping( Data?, Error?) -> Void)
    
    func loadData(from url: URL, completion: @escaping( Data?, URLResponse?, Error? ) -> Void)
}
