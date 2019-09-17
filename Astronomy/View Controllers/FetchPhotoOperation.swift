//
//  FetchPhotoOperation.swift
//  Astronomy
//
//  Created by Luqmaan Khan on 9/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class FetchPhotoOperation: ConcurrentOperation {
    
    var marsPhotoReference: MarsPhotoReference
    var imageData: Data?
    private var dataTask: URLSessionDataTask?
    
    
    init(marsPhotoReference: MarsPhotoReference ) {
        self.marsPhotoReference = marsPhotoReference
        super.init()
    }
    
    override func start() {
        state = .isExecuting
        guard let url = marsPhotoReference.imageURL.usingHTTPS else {return}
        dataTask = URLSession.shared.dataTask(with: url ) { (data, _, error) in
            defer {self.state = .isFinished}
            if let error = error {
                NSLog("Error: \(error)")
                return
            }
            guard let data = data else {return}
            self.imageData = data
        }
        dataTask?.resume()
    }
    override func cancel() {
        dataTask?.cancel()
    }
    
}
