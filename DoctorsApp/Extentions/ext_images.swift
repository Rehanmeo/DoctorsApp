//
//  ext_images.swift
//  DoctorsApp
//
//  Created by Muhammad Rehan on 1/23/23.
//

import Foundation
import UIKit

extension UIView {
    func images(images: UIImage, constainMode: ContentMode, tintColor: UIColor) -> UIImageView {
        let i = UIImageView()
        i.image = images
        i.contentMode = constainMode
        i.tintColor = tintColor
        return i
    }
    
    
    func profileImages(images: UIImage, constainMode: ContentMode, cornarRadius: CGFloat, borderWidth: CGFloat, borderColor: UIColor) -> UIImageView {
        let i = UIImageView()
        i.image = images
        i.contentMode = constainMode
        i.layer.cornerRadius = cornarRadius
        i.layer.borderWidth = borderWidth
        i.layer.borderColor = borderColor.cgColor
        i.clipsToBounds = true
        return i
    }
}
