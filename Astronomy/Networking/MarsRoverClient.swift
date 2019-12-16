//
//  MarsRoverClient.swift
//  Astronomy
//
//  Created by Andrew R Madsen on 9/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MarsRoverClient {
    // MARK: - Properties
    
    private let baseURL = URL(string: "https://api.nasa.gov/mars-photos/api/v1")!
    private let apiKey = "qzGsj0zsKk6CA9JZP1UjAbpQHabBfaPg2M5dGMB7"
    
    let dataLoader: DataLoader
    
    init(networkLoader: DataLoader = URLSession.shared) {
        self.dataLoader = networkLoader
    }
    
    // MARK: - Public API
    
    func fetchMarsRover(
        named name: String,
        using dataLoader: DataLoader? = nil,
        completion: @escaping (Result<MarsRover, Error>) -> Void)
    {
        let dataLoader = dataLoader ?? self.dataLoader
        let url = self.url(forInfoForRover: name)
        
        fetch([String: MarsRover].self, from: url, using: dataLoader) { (result) in
            do {
                if let rover = try result.get()["photoManifest"] {
                    completion(.success(rover))
                } else {
                    completion(.failure(NetworkError.badData))
                }
            } catch {
                completion(.failure(error))
            }
        }
    }
    
    func fetchPhotos(
        from rover: MarsRover,
        onSol sol: Int,
        using dataLoader: DataLoader? = nil,
        completion: @escaping (Result<[MarsPhotoReference], Error>) -> Void)
    {
        let dataLoader = dataLoader ?? self.dataLoader
        let url = self.url(forPhotosfromRover: rover.name, on: sol)
        
        fetch([String: [MarsPhotoReference]].self,
              from: url,
              using: dataLoader)
        { result in
            do {
                if let photos = try result.get()["photos"] {
                    completion(.success(photos))
                } else {
                    completion(.failure(NetworkError.badData))
                }
            } catch {
                completion(.failure(error))
            }
        }
    }
    
    // MARK: - Private
    
    private func fetch<T: Codable>(
        _ type: T.Type,
        from url: URL,
        using dataLoader: DataLoader? = nil,
        completion: @escaping (Result<T, Error>) -> Void)
    {
        let dataLoader = dataLoader ?? self.dataLoader
        dataLoader.loadData(with: url) { result in
            do {
                let data = try result.get()
                let jsonDecoder = MarsPhotoReference.jsonDecoder
                let decodedObject = try jsonDecoder.decode(T.self, from: data)
                completion(.success(decodedObject))
            } catch {
                completion(.failure(error))
            }
        }
    }

    private func url(forInfoForRover roverName: String) -> URL {
        var url = baseURL
        url.appendPathComponent("manifests")
        url.appendPathComponent(roverName)
        let urlComponents = NSURLComponents(url: url, resolvingAgainstBaseURL: true)!
        urlComponents.queryItems = [URLQueryItem(name: "api_key", value: apiKey)]
        return urlComponents.url!
    }
    
    private func url(
        forPhotosfromRover roverName: String,
        on sol: Int
    ) -> URL {
        var url = baseURL
        url.appendPathComponent("rovers")
        url.appendPathComponent(roverName)
        url.appendPathComponent("photos")
        let urlComponents = NSURLComponents(
            url: url,
            resolvingAgainstBaseURL: true)!
        urlComponents.queryItems = [
            URLQueryItem(name: "sol", value: String(sol)),
            URLQueryItem(name: "api_key", value: apiKey)
        ]
        return urlComponents.url!
    }
}
