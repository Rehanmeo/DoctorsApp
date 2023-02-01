//
//  ext_button.swift
//  DoctorsApp
//
//  Created by Muhammad Rehan on 1/22/23.
//

import Foundation
import UIKit

//Creating Buttons

extension UIView {
    
    func topButtons(imageName: UIImage, tintColor: UIColor ) -> UIButton {
        let btn = UIButton()
        btn.setImage(imageName, for: .normal)
        btn.tintColor = tintColor
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }
    
    
    func mainBtn(buttonColor: UIColor, title: String, titelColor: UIColor, radius: CGFloat, border: CGFloat, borerColor: UIColor, fontName: String, fontSize: CGFloat) -> UIButton {
        let btn = UIButton()
        btn.backgroundColor = buttonColor
        btn.setTitle(title, for: .normal)
        btn.setTitleColor(titelColor, for: .normal)
        btn.layer.cornerRadius = radius
        btn.layer.borderWidth = border
        btn.layer.borderColor = borerColor.cgColor
        btn.clipsToBounds = true
        btn.titleLabel?.font = UIFont(name: fontName, size: fontSize)
        return btn
    }
}
