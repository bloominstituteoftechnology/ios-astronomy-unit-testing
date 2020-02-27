//
//  NetworkDataLoader.swift
//  Astronomy
//
//  Created by morse on 12/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void)
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void)
}

extension URLSession: NetworkDataLoader {
    
    func loadData(from request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        dataTask(with: request) { (data, response, error) in
//            if let error = error {
//                completion(nil, error)
//                return
//            }
//
//            guard let data = data else {
//                completion(nil, NSError(domain: "com.LambdaSchool.Astronomy.ErrorDomain", code: -1, userInfo: nil))
//                return
//            }
            completion(data, error)
            return
        }.resume()
    }
    
    func loadData(from url: URL, completion: @escaping (Data?, Error?) -> Void) {
//        guard let roverURL = Bundle.main.url(forResource: "MarsRover", withExtension: "json", subdirectory: nil) else { fatalError("URL to local Rover JSON is nil") }
        
        do {
            let data = try Data(contentsOf: url)
            
//            let jsonDecoder = MarsPhotoReference.jsonDecoder
//
//            let rover = try jsonDecoder.decode([String: MarsRover].self, from: data)["photo_manifest"]
            
            completion(data, nil)
            
        } catch {
            NSLog("Error loading local Mars Rover: \(error)")
            completion(nil, error)
        }
    }
    
    
}
