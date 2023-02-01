//
//  ext_stackView.swift
//  DoctorsApp
//
//  Created by Muhammad Rehan on 1/23/23.
//

import Foundation
import UIKit
extension UIView {
    
    func stackViewS(axis: Bool,aliements: UIStackView.Alignment, distribute: UIStackView.Distribution, spacing: CGFloat) -> UIStackView {
        let st = UIStackView()
        if axis == true {
            st.axis = .vertical
        }else{
            st.axis = .horizontal
        }
//        st.axis = .vertical
        st.alignment = aliements
        st.distribution = distribute
        st.spacing = spacing
        return st
    }
    
}

