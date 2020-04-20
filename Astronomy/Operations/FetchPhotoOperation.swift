//
//  FetchImageOperation.swift
//  Astronomy
//
//  Created by Andrew R Madsen on 9/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class FetchPhotoOperation: ConcurrentOperation {
    
    init(photoReference: MarsPhotoReference, session: NetworkSession = URLSession.shared) {
        self.photoReference = photoReference
        self.session = session
        super.init()
    }
    
    override func start() {
        state = .isExecuting
        let url = photoReference.imageURL.usingHTTPS!
        
        let task = session.networkDataTask(with: url) { (data, response, error) in
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
    
    // MARK: Properties
    
    let photoReference: MarsPhotoReference
    
    private let session: NetworkSession
    
    private(set) var image: UIImage?
    
    private var dataTask: NetworkSessionDataTask?
}
