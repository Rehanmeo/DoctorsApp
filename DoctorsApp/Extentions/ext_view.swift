//
//  ext_view.swift
//  DoctorsApp
//
//  Created by Muhammad Rehan on 1/22/23.
//

import Foundation
import UIKit

extension UIView {
    func customViews(viewColor: UIColor, cornarRadius: CGFloat, sideRadius: CACornerMask, bordarWidth: CGFloat, bordarColor: UIColor? = nil) -> UIView {
        
        let v = UIView()
        v.backgroundColor = viewColor
        v.layer.cornerRadius = cornarRadius
        v.layer.maskedCorners = sideRadius
        v.layer.borderWidth = bordarWidth
        v.layer.borderColor = bordarColor?.cgColor
        v.clipsToBounds = true
        return v
    }
    
    func customViewCell(viewColor: UIColor, cornarRadius: CGFloat, bordarWidth: CGFloat, bordarColor: UIColor? = nil) -> UIView {
        
        let v = UIView()
        v.backgroundColor = viewColor
        v.layer.cornerRadius = cornarRadius
        v.layer.borderWidth = bordarWidth
        v.layer.borderColor = bordarColor?.cgColor
        v.clipsToBounds = true
        return v
    }
}
