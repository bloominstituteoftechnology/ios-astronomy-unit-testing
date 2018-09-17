//
//  FilterImageOperation.swift
//  Astronomy
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class FilterImageOperation: Operation {
    init(fetchOperation: FetchPhotoOperation) {
        self.fetchOperation = fetchOperation
    }
    
    override func main() {
        if let data = fetchOperation.imageData,
            let image = UIImage(data: data) {
            self.image = image.filtered()
            NSLog("Finished filtering image")
        }
    }
    
    let fetchOperation: FetchPhotoOperation
    private(set) var image: UIImage?
}
