//
//  URLSession+NetworkDataLoader.swift
//  Astronomy
//
//  Created by Tobi Kuyoro on 23/03/2020.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

extension URLSession: NetworkDataLoader {
   func loadData(from request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
      dataTask(with: request, completionHandler: completion).resume()
   }
   
   func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
      dataTask(with: url) { data, response, error in
         completion(data, error)
      }.resume()
   }
}
