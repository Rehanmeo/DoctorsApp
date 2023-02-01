//
//  ext_color.swift
//  DoctorsApp
//
//  Created by Muhammad Rehan on 1/21/23.
//

import Foundation
import UIKit

extension UIColor {
    
    static func basColor(red: CGFloat, green: CGFloat, blue: CGFloat, alfa: CGFloat) -> UIColor {
        return UIColor(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: 1.0)
    }
    
    static var mainbgcolor: UIColor {
        return basColor(red: 240.0, green: 244.0, blue: 253.0, alfa: 1.0)
    }
    
    static var welcomeTitle: UIColor {
        return basColor(red: 172.0, green: 177.0, blue: 191.0, alfa: 1.0)
    }
    
    static var themesBlueColor: UIColor {
        return basColor(red: 46.0, green: 136.0, blue: 255.0, alfa: 1.0)
    }
}
