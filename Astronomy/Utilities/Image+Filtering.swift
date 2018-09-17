//
//  Image+Filtering.swift
//  Astronomy
//
//  Created by Andrew R Madsen on 9/11/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    func filtered() -> UIImage {
        let context = CIContext(options: nil)
        let input = CIImage(image: self)
        
        let sharpenFilter = CIFilter(name: "CISharpenLuminance")!
        sharpenFilter.setValue(0.5, forKey: kCIInputSharpnessKey)
        let contrastFilter = CIFilter(name: "CIColorControls")!
        contrastFilter.setValue(1.5, forKey: kCIInputContrastKey)
        
        sharpenFilter.setValue(input, forKey: kCIInputImageKey)
        contrastFilter.setValue(sharpenFilter.outputImage, forKey: kCIInputImageKey)
        
        let output = contrastFilter.outputImage!
        let cgImage = context.createCGImage(output, from: output.extent)
        return UIImage(cgImage: cgImage!)
    }
}
