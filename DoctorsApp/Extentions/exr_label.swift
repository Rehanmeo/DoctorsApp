//
//  exr_label.swift
//  DoctorsApp
//
//  Created by Muhammad Rehan on 1/22/23.
//

import Foundation
import UIKit

extension UIView {
    func titleLabel(welcomeTitle: String, textColor: UIColor, fontName: String, fontSize: Int) -> UILabel {
        let l = UILabel()
        l.text = welcomeTitle
        l.font = UIFont(name: fontName, size: CGFloat(fontSize))
        l.textColor = textColor
        return l
    }
}
