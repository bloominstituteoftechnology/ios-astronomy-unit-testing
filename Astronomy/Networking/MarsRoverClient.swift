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
    
    init(dataLoader: DataLoader = URLSession.shared) {
        self.dataLoader = dataLoader
    }
    
    // MARK: - Public API
    
    func fetchMarsRover(
        named name: String,
        using dataLoader: DataLoader? = nil,
        completion: @escaping (Result<MarsRover, NetworkError>) -> Void)
    {
        let dataLoader = dataLoader ?? self.dataLoader
        let url = self.url(forInfoForRover: name)
        
        fetch([String: MarsRover].self, from: url, using: dataLoader) { (result) in
            do {
                if let rover = try result.get()["photo_manifest"] {
                    completion(.success(rover))
                } else {
                    completion(.failure(.badData))
                }
            } catch let networkError as NetworkError {
                completion(.failure(networkError))
            } catch {
                NSLog(error.localizedDescription)
                completion(.failure(.badData))
            }
        }
    }
    
    func fetchPhotos(
        from rover: MarsRover,
        onSol sol: Int,
        using dataLoader: DataLoader? = nil,
        completion: @escaping (Result<[MarsPhotoReference], NetworkError>) -> Void)
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
            } catch let networkError as NetworkError {
                completion(.failure(networkError))
            } catch {
                NSLog(error.localizedDescription)
                completion(.failure(.badData))
            }
        }
    }
    
    // MARK: - Private
    
    private func fetch<T: Codable>(
        _ type: T.Type,
        from url: URL,
        using dataLoader: DataLoader? = nil,
        completion: @escaping (Result<T, NetworkError>) -> Void)
    {
        let dataLoader = dataLoader ?? self.dataLoader
        dataLoader.loadData(with: url) { result in
            let jsonDecoder = MarsPhotoReference.jsonDecoder
            var data: Data
            
            do {
                data = try result.get()
            } catch let networkError as NetworkError {
                completion(.failure(networkError))
                return
            } catch {
                NSLog(error.localizedDescription)
                completion(.failure(.badData))
                return
            }
            
            do {
                let decodedObject = try jsonDecoder.decode(T.self, from: data)
                completion(.success(decodedObject))
            } catch let networkError as NetworkError {
                completion(.failure(networkError))
            } catch {
                NSLog(error.localizedDescription)
                completion(.failure(.noDecode))
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
