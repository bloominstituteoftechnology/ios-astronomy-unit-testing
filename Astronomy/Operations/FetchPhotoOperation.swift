//
//  FetchImageOperation.swift
//  Astronomy
//
//  Created by Andrew R Madsen on 9/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class FetchPhotoOperation: ConcurrentOperation {
    
    let photoReference: MarsPhotoReference
    
    private let session: URLSession
    
    private(set) var image: UIImage?
    
    private var dataTask: URLSessionDataTask?
    
    init(photoReference: MarsPhotoReference, session: URLSession = URLSession.shared) {
        self.photoReference = photoReference
        self.session = session
        super.init()
    }
    
    override func start() {
        state = .isExecuting
        let url = photoReference.imageURL.usingHTTPS!
        
        let task = session.dataTask(with: url) { (data, response, error) in
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
        task.resume()
        dataTask = task
    }
    
    override func cancel() {
        dataTask?.cancel()
        super.cancel()
    }
}
