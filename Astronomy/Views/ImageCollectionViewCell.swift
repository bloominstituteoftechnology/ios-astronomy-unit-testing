//
//  ImageCollectionViewCell.swift
//  Astronomy
//
//  Created by Andrew R Madsen on 9/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    //MARK: - Outlets
    
    @IBOutlet var imageView: UIImageView!
    
    //MARK: - Methods
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = #imageLiteral(resourceName: "MarsPlaceholder")
    }
}
