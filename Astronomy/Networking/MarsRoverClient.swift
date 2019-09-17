//
//  MarsRoverClient.swift
//  Astronomy
//
//  Created by Andrew R Madsen on 9/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

enum NetworkError: Error, Equatable {
    case otherError
    case noData
    case decodeError
}

class MarsRoverClient {
    
    let networkDataLoader: NetworkDataLoader
    var rover:MarsRover?
    var photos: [MarsPhotoReference] = []
    init(networkDataLoader: NetworkDataLoader = URLSession.shared) {
        self.networkDataLoader = networkDataLoader
    }
    
    func fetchMarsRover(named name: String,
                        completion: @escaping (MarsRover?, NetworkError?) -> Void) {
        
        let url = self.url(forInfoForRover: name)
        fetch(from: url) { (dictionary: [String : MarsRover]?, error: Error?) in
            guard let rover = dictionary?["photo_manifest"] else {
                completion(nil, .otherError)
                return
            }
            self.rover = rover
            completion(rover, nil)
        }
    }
    
    func fetchPhotos(from rover: MarsRover,
                     onSol sol: Int,
                     completion: @escaping ([MarsPhotoReference]?, NetworkError?) -> Void) {
        
        let url = self.url(forPhotosfromRover: rover.name, on: sol)
        fetch(from: url) { (dictionary: [String : [MarsPhotoReference]]?, error: Error?) in
            guard let photos = dictionary?["photos"] else {
                completion(nil, .otherError)
                return
            }
            self.photos = photos
            completion(photos, nil)
        }
    }
    
    // MARK: - Private
    
    private func fetch<T: Codable>(from url: URL,
                           completion: @escaping (T?, NetworkError?) -> Void) {
        networkDataLoader.loadData(from: url) { (data, error) in
            
            if let error = error {
                completion(nil, .otherError)
                return
            }
            
            guard let data = data else {
                completion(nil, .noData)
                return
            }
            
            do {
                let jsonDecoder = MarsPhotoReference.jsonDecoder
                let decodedObject = try jsonDecoder.decode(T.self, from: data)
                completion(decodedObject, nil)
            } catch {
                completion(nil, .decodeError)
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
}
