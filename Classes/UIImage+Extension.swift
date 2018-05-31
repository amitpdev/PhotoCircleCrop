//
//  UIImage+Extension.swift
//
//  Created by Andrea Antonioni on 17/01/17.
//  Copyright © 2017 Andrea Antonioni. All rights reserved.
//

import Foundation

extension UIImage {
    
    // More information here: http://nshipster.com/image-resizing/
    func resizeImage(newWidth: CGFloat) -> UIImage {
        
        let scale = newWidth / self.size.width
        let newHeight = self.size.height * scale
        UIGraphicsBeginImageContextWithOptions(CGSize(width: newWidth, height: newHeight), false, 0)
        self.draw(in: CGRect(x: 0, y: 0, width: newWidth, height: newHeight))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }
}
