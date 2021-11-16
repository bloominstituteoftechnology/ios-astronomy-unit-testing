//
//  ImageCollectionViewCell.swift
//  Astronomy
//
//  Created by Andrew R Madsen on 9/5/18.
//  Copyright © 2018 BloomTech. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = #imageLiteral(resourceName: "MarsPlaceholder")
    }
    
    // MARK: Properties
    
    // MARK: IBOutlets
    
    @IBOutlet var imageView: UIImageView!
}
