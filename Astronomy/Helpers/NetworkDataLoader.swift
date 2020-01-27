//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Lambda_School_Loaner_218 on 1/27/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

protocol NetWorkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping(Data?, HTTPURLResponse?, Error?) -> Void)
    
    func loadData(from url: URL, completion: @escaping(Data?, HTTPURLResponse?, Error?)-> Void)
}
