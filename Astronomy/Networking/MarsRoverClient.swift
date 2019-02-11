//
//  MarsRoverClient.swift
//  Astronomy
//
//  Created by Andrew R Madsen on 9/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MarsRoverClient {
    
    /**
     What shall we test?
     
     - Does decoding work when given good data
     - Does decoding fail when given bad data
     - Does it build the correct URL?
     - Does it build the correct URLRequest?
     - Are the results valid?
     - Is the completion handler called if the networking fails?
     - Is the completion handler called if the data is bad?
     - Is the completion handler called if the data is good?
     
     **/
    
    let dataLoader:  NetworkDataLoader
    
    init(dataLoader: NetworkDataLoader = URLSession.shared) {
        self.dataLoader = dataLoader
    }
    
    func fetchMarsRover(named name: String,
                        using session: URLSession = URLSession.shared,
                        completion: @escaping (MarsRover?, Error?) -> Void) {
        
        let url = self.url(forInfoForRover: name)
        fetch(from: url, using: session) { (dictionary: [String : MarsRover]?, error: Error?) in

            guard let rover = dictionary?["photoManifest"] else {
                self.searchError = error
                completion(nil, error)
                return
            }
            self.marsRover = rover
            self.goodDataCompletion += 1
            completion(rover, nil)
        }
    }
    
    func fetchPhotos(from rover: MarsRover,
                     onSol sol: Int,
                     using session: URLSession = URLSession.shared,
                     completion: @escaping ([MarsPhotoReference]?, Error?) -> Void) {
        
        let url = self.url(forPhotosfromRover: rover.name, on: sol)
        fetch(from: url, using: session) { (dictionary: [String : [MarsPhotoReference]]?, error: Error?) in
            guard let photos = dictionary?["photos"] else {
                completion(nil, error)
                return
            }
            self.goodDataCompletion += 1
            completion(photos, nil)
        }
    }
    
    // MARK: - Private
    
    private func fetch<T: Codable>(from url: URL,
                           using session: URLSession = URLSession.shared,
                           completion: @escaping (T?, Error?) -> Void) {
        dataLoader.loadData(from: url){ (data, error) in
            if let error = error {
                self.badNetworkCompletion += 1
                self.searchError = error
                completion(nil, error)
                return
            }
            
            guard let data = data else {
                self.badDataCompletion += 1
                completion(nil, NSError(domain: "com.LambdaSchool.Astronomy.ErrorDomain", code: -1, userInfo: nil))
                return
            }
            
            do {
                let jsonDecoder = MarsPhotoReference.jsonDecoder
                let decodedObject = try jsonDecoder.decode(T.self, from: data)
                self.couldDecodeCompletion += 1
                completion(decodedObject, nil)
            } catch {
                self.couldNotDecodeCompletion += 1
                self.searchError = error
                completion(nil, error)
            }
        }
    }
    
    private let baseURL = URL(string: "https://api.nasa.gov/mars-photos/api/v1")!
    private let apiKey = "qzGsj0zsKk6CA9JZP1UjAbpQHabBfaPg2M5dGMB7"

    private func url(forInfoForRover roverName: String) -> URL {
        var url = baseURL
        url.appendPathComponent("manifests")
        url.appendPathComponent(roverName)
        let urlComponents = NSURLComponents(url: url, resolvingAgainstBaseURL: true)!
        urlComponents.queryItems = [URLQueryItem(name: "api_key", value: apiKey)]
        return urlComponents.url!
    }
    
    private func url(forPhotosfromRover roverName: String, on sol: Int) -> URL {
        var url = baseURL
        url.appendPathComponent("rovers")
        url.appendPathComponent(roverName)
        url.appendPathComponent("photos")
        let urlComponents = NSURLComponents(url: url, resolvingAgainstBaseURL: true)!
        urlComponents.queryItems = [URLQueryItem(name: "sol", value: String(sol)),
                                    URLQueryItem(name: "api_key", value: apiKey)]
        return urlComponents.url!
    }
    
    var marsPhotoReferences: [MarsPhotoReference]?
    var marsRover: MarsRover?
    var searchError: Error?
    var goodDataCompletion = 0
    var badDataCompletion = 0
    var badNetworkCompletion = 0
    var couldDecodeCompletion = 0
    var couldNotDecodeCompletion = 0

}
