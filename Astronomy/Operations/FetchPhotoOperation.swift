//
//  FetchImageOperation.swift
//  Astronomy
//
//  Created by Andrew R Madsen on 9/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class FetchPhotoOperation: ConcurrentOperation {
    
    // MARK: Properties
    
    let photoReference: MarsPhotoReference
    
//    private let session: URLSession
    private let networkLoader: NetworkDataLoader
    
    private(set) var image: UIImage?
    
//    private var dataTask: URLSessionDataTask?
    private var dataTask: NetworkDataTask?
    
    // change everyewhere that says "session" to networkLoader
    
    init(photoReference: MarsPhotoReference, networkLoader: NetworkDataLoader = URLSession.shared) {
        self.photoReference = photoReference
        self.networkLoader = networkLoader
        super.init()
    }
    
    override func start() {
        state = .isExecuting
        let url = photoReference.imageURL.usingHTTPS!
        
//        let task = session.dataTask(with: url) { (data, response, error) in
        let task = networkLoader.loadData(from: url) { (data, error) in
            defer { self.state = .isFinished }
            if self.isCancelled { return }
            if let error = error {
                NSLog("Error fetching data for \(self.photoReference): \(error)")
                return
            }
            
            if let data = data {
                self.image = UIImage(data: data)
            }
        }
//        task.resume()
        dataTask = task
    }
    
    override func cancel() {
//        dataTask?.cancel()
        dataTask?.cancelTask()
        
        super.cancel()
    }
}
