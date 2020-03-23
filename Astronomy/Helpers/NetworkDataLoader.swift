//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by Lambda_School_Loaner_268 on 3/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    
    func loadData(using request:URLRequest, completion: @escaping (Data?, Error?) -> Void)
    
    func loadData(from url: URL, completion: @escaping(Data?, Error?) -> Void)
    
}
