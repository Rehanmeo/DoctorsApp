//
//  PetionetAppointmentRequiresDetailVC.swift
//  DoctorsApp
//
//  Created by Muhammad Rehan on 1/29/23.
//

import Foundation
import UIKit

class PetionetAppointmentRequiresDetailVC: UIViewController {
    
    lazy var appiontmentViewHeader: UIView = {
        return UIView().customViews(viewColor: UIColor.themesBlueColor, cornarRadius: 120, sideRadius: [.layerMaxXMaxYCorner], bordarWidth: 0)
    }()
    
    let profileImage: UIImageView = {
        return UIImageView().profileImages(images: UIImage(named: "me")!, constainMode: .scaleAspectFit, cornarRadius: 30, borderWidth: 6, borderColor: .white)
    }()
    
    let backBtn: UIButton = {
        return UIButton().topButtons(imageName: UIImage(systemName: "arrow.backward")!, tintColor: .white)
    }()
    
    let appointmentRequesedLabel: UILabel = {
        return UILabel().titleLabel(welcomeTitle: "Appointment Request", textColor: UIColor.white, fontName: "Helvetica", fontSize: 12)
    }()
    
    let callingBtn: UIButton = {
        return UIButton().topButtons(imageName: UIImage(systemName: "phone")!, tintColor: .white)
    }()
    
    let appointmentDateLabel: UILabel = {
        return UILabel().titleLabel(welcomeTitle: "12 Jan 2020, \n 8am - 10am", textColor: UIColor.white, fontName: "Helvetica", fontSize: 36)
    }()
    
    let drNameLabel: UILabel = {
        return UILabel().titleLabel(welcomeTitle: "Muhammad \nRehan meo", textColor: UIColor.black, fontName: "Helvetica", fontSize: 32)
    }()
    
    let commentLabel: UILabel = {
        return UILabel().titleLabel(welcomeTitle: "Comment:", textColor: UIColor.systemGray3, fontName: "Helvetica", fontSize: 22)
    }()
    
    let helloLabel: UILabel = {
        return UILabel().titleLabel(welcomeTitle: "Hello Dr.Peterson,\n\nI goingto bring complete blood count analysis with me", textColor: UIColor.black.withAlphaComponent(0.8), fontName: "Helvetica", fontSize: 14)
    }()
    
    var DetailsView: UIView = {
        return UIView().customViews(viewColor: UIColor(red: 235.0 / 255.0, green: 253.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0), cornarRadius: 0, sideRadius: [.layerMaxXMaxYCorner], bordarWidth: 0)
    }()
    
    let fileUploadBtn: UIButton = {
        return UIButton().topButtons(imageName: UIImage(systemName: "square.and.arrow.up")!, tintColor: UIColor(red: 62.0 / 255.0, green: 205.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0))
    }()
    
    let complateBloodLabel: UILabel = {
        return UILabel().titleLabel(welcomeTitle: "Complate blood count", textColor:  UIColor(red: 62.0 / 255.0, green: 205.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0), fontName: "Helvetica", fontSize: 17)
    }()
    
    let dateBloodLabel: UILabel = {
        return UILabel().titleLabel(welcomeTitle: "05 Mar 2020", textColor:  UIColor(red: 62.0 / 255.0, green: 205.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0), fontName: "Helvetica", fontSize: 15)
    }()
    
    let acceptBtn: UIButton = {
        return UIButton().mainBtn(buttonColor: UIColor.themesBlueColor, title: "ACCEPT", titelColor: UIColor.white, radius: 22, border: 0, borerColor: .clear, fontName: "Helvetica", fontSize: 14)
    }()
    
    let declineBtn: UIButton = {
        return UIButton().mainBtn(buttonColor: UIColor.mainbgcolor, title: "DECLINE", titelColor: UIColor.black.withAlphaComponent(0.8), radius: 19, border: 0, borerColor: .clear, fontName: "Helvetica", fontSize: 12)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PetionetControllerUISet()
        callingBtn.backgroundColor = UIColor(red: 62.0 / 255.0, green: 205.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0)
        callingBtn.layer.cornerRadius = 30
        callingBtn.layer.borderWidth  = 6
        callingBtn.layer.borderColor = UIColor.white.cgColor
        callingBtn.clipsToBounds = true
        
        appointmentDateLabel.numberOfLines = 0
        drNameLabel.numberOfLines = 0
        helloLabel.numberOfLines = 0
        
        DetailsView.borders(for: [.left], width: 3, color: UIColor(red: 85.0 / 255.0, green: 178.0 / 255.0, blue: 187.0 / 255.0, alpha: 1.0))
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

extension PetionetAppointmentRequiresDetailVC {
    fileprivate func PetionetControllerUISet(){
        [appiontmentViewHeader, drNameLabel, commentLabel, helloLabel, DetailsView, acceptBtn, declineBtn].forEach({
            view.addSubview($0)
        })
        
        [backBtn, appointmentRequesedLabel, profileImage, callingBtn, appointmentDateLabel].forEach({
            view.addSubview($0)
        })
        
        [fileUploadBtn, complateBloodLabel, dateBloodLabel].forEach({
            DetailsView.addSubview($0)
        })
        
        appiontmentViewHeader.anchor(top: view.topAnchor, left: view.leftAnchor,  right: view.rightAnchor, pendingTop: 0, pendingleft: 0, pendingBottom: 0, pendingRight: 0, width: view.frame.size.height, height: view.frame.size.height / 3 + 40)
        
        profileImage.anchor(left: view.leftAnchor, bottom: appiontmentViewHeader.bottomAnchor, pendingTop: 0, pendingleft: 60, pendingBottom: 50, pendingRight: 0, width: 100, height: 100)
        
        backBtn.anchor(top: appiontmentViewHeader.topAnchor, left: appiontmentViewHeader.leftAnchor, pendingTop: 45, pendingleft: 20, pendingBottom: 0, pendingRight: 0, width: 28, height: 20)
        
        appointmentRequesedLabel.anchor(left: backBtn.rightAnchor, pendingTop: 0, pendingleft: 15, pendingBottom: 0, pendingRight: 0)
        appointmentRequesedLabel.centerY(inView: backBtn)
        
        callingBtn.anchor(left: profileImage.rightAnchor, pendingTop: 0, pendingleft: 20, pendingBottom: 0, pendingRight: 0, width: 60, height: 60)
        callingBtn.centerY(inView: profileImage)
        
        appointmentDateLabel.centerX(inView: appiontmentViewHeader)
        appointmentDateLabel.centerY(inView: appiontmentViewHeader)
        
        
        drNameLabel.anchor(top: profileImage.bottomAnchor, left: profileImage.leftAnchor, pendingTop: 30, pendingleft: 0, pendingBottom: 0, pendingRight: 0)
        
        commentLabel.anchor(top: drNameLabel.bottomAnchor, left: drNameLabel.leftAnchor, pendingTop: 20, pendingleft: 0, pendingBottom: 0, pendingRight: 0)
        
        helloLabel.anchor(top: commentLabel.bottomAnchor, left: commentLabel.leftAnchor,  right: view.rightAnchor, pendingTop: 15, pendingleft: 0, pendingBottom: 0, pendingRight: -40)
        
        
        DetailsView.anchor(top: helloLabel.bottomAnchor, left: helloLabel.leftAnchor,  right: helloLabel.rightAnchor, pendingTop: 15, pendingleft: 0, pendingBottom: 0, pendingRight: 0, width: 0, height: 75)
        
        fileUploadBtn.anchor(top: DetailsView.topAnchor, left: DetailsView.leftAnchor, pendingTop: 10, pendingleft: 10, pendingBottom: 0, pendingRight: 0, width: 35, height: 35)
        
        complateBloodLabel.anchor(left: fileUploadBtn.rightAnchor, pendingTop: 0, pendingleft: 10, pendingBottom: 0, pendingRight: 0)
        complateBloodLabel.centerY(inView: fileUploadBtn)
        
        dateBloodLabel.anchor(top: complateBloodLabel.bottomAnchor, left: complateBloodLabel.leftAnchor, right: complateBloodLabel.rightAnchor, pendingTop: 10, pendingleft: 0, pendingBottom: 0, pendingRight: 0)
        
        acceptBtn.anchor(top: DetailsView.bottomAnchor, left: view.leftAnchor, right: declineBtn.leftAnchor, pendingTop: 30, pendingleft: 20, pendingBottom: 0, pendingRight: -10, height: 44)
        
        declineBtn.anchor(left: acceptBtn.rightAnchor, right: view.rightAnchor, pendingTop: 0, pendingleft: 0, pendingBottom: 0, pendingRight: -20, width: view.frame.size.width / 3, height: 38)
        declineBtn.centerY(inView: acceptBtn)
        
    }
}


extension UIView {
    func borders(for edges:[UIRectEdge], width:CGFloat = 1, color: UIColor = .black) {

        if edges.contains(.all) {
            layer.borderWidth = width
            layer.borderColor = color.cgColor
        } else {
            let allSpecificBorders:[UIRectEdge] = [.top, .bottom, .left, .right]

            for edge in allSpecificBorders {
                if let v = viewWithTag(Int(edge.rawValue)) {
                    v.removeFromSuperview()
                }

                if edges.contains(edge) {
                    let v = UIView()
                    v.tag = Int(edge.rawValue)
                    v.backgroundColor = color
                    v.translatesAutoresizingMaskIntoConstraints = false
                    addSubview(v)

                    var horizontalVisualFormat = "H:"
                    var verticalVisualFormat = "V:"

                    switch edge {
                    case UIRectEdge.bottom:
                        horizontalVisualFormat += "|-(0)-[v]-(0)-|"
                        verticalVisualFormat += "[v(\(width))]-(0)-|"
                    case UIRectEdge.top:
                        horizontalVisualFormat += "|-(0)-[v]-(0)-|"
                        verticalVisualFormat += "|-(0)-[v(\(width))]"
                    case UIRectEdge.left:
                        horizontalVisualFormat += "|-(0)-[v(\(width))]"
                        verticalVisualFormat += "|-(0)-[v]-(0)-|"
                    case UIRectEdge.right:
                        horizontalVisualFormat += "[v(\(width))]-(0)-|"
                        verticalVisualFormat += "|-(0)-[v]-(0)-|"
                    default:
                        break
                    }

                    self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: horizontalVisualFormat, options: .directionLeadingToTrailing, metrics: nil, views: ["v": v]))
                    self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: verticalVisualFormat, options: .directionLeadingToTrailing, metrics: nil, views: ["v": v]))
                }
            }
        }
    }
}
