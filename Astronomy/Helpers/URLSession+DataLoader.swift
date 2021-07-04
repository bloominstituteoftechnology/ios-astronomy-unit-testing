//
//  URLSession+DataLoader.swift
//  Astronomy
//
//  Created by Michael Flowers on 7/1/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

//We are wrapping up a normal URLSessionDataTask into our own loadData method so it runs through the networkDataLoader protocol, but the function is the exact same as a URLSessionDataTask call.
extension URLSession: NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        dataTask(with: request) { (data, _, error) in
            //pass this so it is completed elsewhere. We are basically moving it up a level to be completed
            completion(data, error)
        }.resume() //so inside of where we make the network call, we don't have to have .resume() because we are adding it here
    }
    
    func loadData(from URL: URL, completion: @escaping (Data?, Error?) -> Void) {
        dataTask(with: URL) { (data, _, error) in
            completion(data, error)
        }.resume()
    } 
}
