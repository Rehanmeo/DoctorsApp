//
//  HomeVC.swift
//  DoctorsApp
//
//  Created by Muhammad Rehan on 1/21/23.
//

import Foundation
import UIKit

class HomeVC: UIViewController {
    
    
    //MARK:- View Elements
    let menuBtn: UIButton = {
        return UIButton().topButtons(imageName: UIImage(systemName: "line.horizontal.3")!, tintColor: .black)
    }()
    
    let rightTopBtn: UIButton = {
        return UIButton().topButtons(imageName: UIImage(systemName: "note")!, tintColor: .black)
    }()
    
    let welcomeTitle: UILabel = {
        return UILabel().titleLabel(welcomeTitle: "Welcome Back!", textColor: UIColor.welcomeTitle, fontName: "HelveticaNeue-Bold", fontSize: 17)
    }()
    
    let titleNameLabel: UILabel = {
        return UILabel().titleLabel(welcomeTitle: "Dr.Muhammad Rehan", textColor: UIColor.black, fontName: "HelveticaNeue-Bold", fontSize: 22)
    }()
    
    let appointmentView: UIView = {
        return UIView().customViews(viewColor: UIColor.white, cornarRadius: 20, sideRadius: [.layerMaxXMaxYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner], bordarWidth: 0)
    }()
    
    lazy var appiontmentViewHeader: UIView = {
        return UIView().customViews(viewColor: UIColor.themesBlueColor, cornarRadius: 20, sideRadius: [.layerMaxXMinYCorner, .layerMinXMinYCorner], bordarWidth: 0)
    }()
    
    let appointmentRequistLabel: UILabel = {
        return UILabel().titleLabel(welcomeTitle: "Appointment Requist", textColor: UIColor.white, fontName: "HelveticaNeue", fontSize: 12)
    }()
    
    let appointmentRequestBtn: UIButton = {
        return UIButton().topButtons(imageName: UIImage(systemName: "exclamationmark")!, tintColor: .white)
    }()
    
    let appointmentDateLabel: UILabel = {
        return UILabel().titleLabel(welcomeTitle: "12 Jan 2020, Bam - 10am", textColor: UIColor.white, fontName: "HelveticaNeue", fontSize: 12)
    }()
    
    let clockImages: UIImageView = {
        return UIImageView().images(images: UIImage(systemName: "clock")!, constainMode: .scaleToFill, tintColor: UIColor.white)
    }()
    
    let profileImage: UIImageView = {
        return UIImageView().profileImages(images: UIImage(named: "me")!, constainMode: .scaleAspectFit, cornarRadius: 26, borderWidth: 2, borderColor: .white)
    }()
    
    let namesStacks: UIStackView = {
        return UIStackView().stackViewS(axis: true, aliements: .leading, distribute: .equalCentering, spacing: 10)
    }()
    
    let firstNameLabel: UILabel = {
        return UILabel().titleLabel(welcomeTitle: "Muhammad", textColor: UIColor.black, fontName: "Helvetica", fontSize: 12)
    }()
    
    let lastNameLabel: UILabel = {
        return UILabel().titleLabel(welcomeTitle: "Rehan", textColor: UIColor.black, fontName: "Helvetica", fontSize: 12)
    }()
    
    let infoBtn: UIButton = {
        return UIButton().topButtons(imageName: UIImage(systemName: "info.circle")!, tintColor: .black)
    }()
    
    let acceptBtn: UIButton = {
        return UIButton().mainBtn(buttonColor: UIColor.themesBlueColor, title: "ACCEPT", titelColor: UIColor.white, radius: 22, border: 0, borerColor: .clear, fontName: "Helvetica", fontSize: 14)
    }()
    
    let declineBtn: UIButton = {
        return UIButton().mainBtn(buttonColor: UIColor.mainbgcolor, title: "DECLINE", titelColor: UIColor.black.withAlphaComponent(0.8), radius: 19, border: 0, borerColor: .clear, fontName: "Helvetica", fontSize: 12)
    }()
    
    let tableview: UITableView = {
        let tb = UITableView()
        tb.backgroundColor = UIColor.clear
        tb.register(listOfAppointCell.self, forCellReuseIdentifier: "cell")
        tb.register(UITableViewHeaderFooterView.self, forHeaderFooterViewReuseIdentifier: "header")
        return tb
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        view.backgroundColor = UIColor.mainbgcolor
        tableview.delegate = self
        tableview.dataSource = self
        tableview.separatorStyle = .none
        tableview.showsVerticalScrollIndicator = false
        menuBtn.addTarget(self, action: #selector(homeEventAction(_:)), for: .touchUpInside)
        rightTopBtn.addTarget(self, action: #selector(homeEventAction(_:)), for: .touchUpInside)
        acceptBtn.addTarget(self, action: #selector(homeEventAction(_:)), for: .touchUpInside)
        setUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @objc fileprivate func homeEventAction(_ sender: UIButton) {
        switch sender {
        case menuBtn:
            print("Hello Pakistan")
        case rightTopBtn:
            print("Pakistan Hello")
        case acceptBtn:
            print("Accept Btn")
            self.show(PetionetAppointmentRequiresDetailVC(), sender: self)
        default:
            print("Going to Hall")
        }
    }
    
}

extension HomeVC {
    fileprivate func setUI() {
        
        [menuBtn, rightTopBtn, welcomeTitle, titleNameLabel, appointmentView, tableview].forEach({
            view.addSubview($0)
        })
        
        [appiontmentViewHeader, profileImage, namesStacks, infoBtn, acceptBtn, declineBtn].forEach({
            appointmentView.addSubview($0)
        })
        
        [firstNameLabel, lastNameLabel].forEach({
            namesStacks.addArrangedSubview($0)
        })
        
//        [acceptBtn, declineBtn].forEach({
//            accepButtonsStacks.addArrangedSubview($0)
//        })
//
        [appointmentRequistLabel, appointmentRequestBtn, clockImages, appointmentDateLabel].forEach({
            appiontmentViewHeader.addSubview($0)
        })
        
        //Multiple's constains
        let appointmentViewHight = view.frame.size.height / 3
//        view.addSubview(menuBtn)
        menuBtn.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: nil, right: nil, pendingTop: 40, pendingleft: 20, pendingBottom: 0, pendingRight: 0, width: 24, height: 24)
        
        rightTopBtn.anchor(top: view.topAnchor, left: nil, bottom: nil, right: view.rightAnchor, pendingTop: 40, pendingleft: 0, pendingBottom: 0, pendingRight: -20, width: 24, height: 24)
        
        welcomeTitle.anchor(top: menuBtn.bottomAnchor, left: menuBtn.leftAnchor, bottom: nil, right: nil, pendingTop: 40, pendingleft: 0, pendingBottom: 0, pendingRight:0)
        
        titleNameLabel.anchor(top: welcomeTitle.bottomAnchor, left: welcomeTitle.leftAnchor, pendingTop: 20, pendingleft: 0, pendingBottom: 0, pendingRight: 0)
        
        appointmentView.anchor(top: titleNameLabel.bottomAnchor, left: menuBtn.leftAnchor, right: rightTopBtn.rightAnchor, pendingTop: 18, pendingleft: 0, pendingBottom: 0, pendingRight: 0, height: appointmentViewHight)
        
        
        appiontmentViewHeader.anchor(top: appointmentView.topAnchor, left: appointmentView.leftAnchor, right: appointmentView.rightAnchor, pendingTop: 0, pendingleft: 0, pendingBottom: 0, pendingRight: 0, height: appointmentViewHight / 3)
        
        
        appointmentRequistLabel.anchor(top: appiontmentViewHeader.topAnchor, left: appiontmentViewHeader.leftAnchor, right: appointmentRequestBtn.leftAnchor, pendingTop: 20, pendingleft: 20, pendingRight: 20)
        
        appointmentRequestBtn.anchor(right: appiontmentViewHeader.rightAnchor, pendingTop: 0, pendingleft: 0, pendingBottom: 0, pendingRight: -20, width: 20, height: 10)
        appointmentRequestBtn.centerY(inView: appointmentRequistLabel)
        
        clockImages.anchor(top: appointmentRequistLabel.bottomAnchor, left: appointmentRequistLabel.leftAnchor, pendingTop: 10, pendingleft: 0, pendingBottom: 0, pendingRight: 0, width: 24, height: 24)
        
        appointmentDateLabel.anchor(left: clockImages.rightAnchor, right: appointmentRequestBtn.rightAnchor, pendingTop: 0, pendingleft: 10, pendingBottom: 0, pendingRight: 0)
        appointmentDateLabel.centerY(inView: clockImages)
        
        
        profileImage.anchor(top: appiontmentViewHeader.bottomAnchor, left: appointmentRequistLabel.leftAnchor, pendingTop: 15, pendingleft: 0, pendingBottom: 0, pendingRight: 0, width: 75, height: 75)
        
        namesStacks.anchor(left: profileImage.rightAnchor, right: appiontmentViewHeader.rightAnchor, pendingTop: 0, pendingleft: 20, pendingBottom: 0, pendingRight: 0)
        namesStacks.centerY(inView: profileImage)
        
        
        infoBtn.anchor(right: appointmentView.rightAnchor, pendingTop: 0, pendingleft: 0, pendingBottom: 0, pendingRight: -20, width: 24, height: 24)
        infoBtn.centerY(inView: namesStacks)
        
        acceptBtn.anchor(top: profileImage.bottomAnchor, left: profileImage.leftAnchor, right: declineBtn.leftAnchor, pendingTop: 20, pendingleft: 0, pendingBottom: 0, pendingRight: -10, height: 44)
        
        declineBtn.anchor(left: acceptBtn.rightAnchor, right: infoBtn.rightAnchor, pendingTop: 0, pendingleft: 0, pendingBottom: 0, pendingRight: 0, width: view.frame.size.width / 3, height: 38)
        declineBtn.centerY(inView: acceptBtn)
        
        tableview.anchor(top: appointmentView.bottomAnchor, left: appointmentView.leftAnchor, bottom: view.bottomAnchor , right: appointmentView.rightAnchor, pendingTop: 20, pendingleft: 0, pendingBottom: -20, pendingRight: 0)
        
    
        
    }
}

//MARK: - TableView extensions
extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! listOfAppointCell
        cell.selectionStyle = .none
        cell.backgroundColor = UIColor.clear
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header")!
        header.contentView.backgroundColor = UIColor.mainbgcolor
        
        let lastNameLabel: UILabel = {
            return UILabel().titleLabel(welcomeTitle: "Next Appointments", textColor: UIColor.black.withAlphaComponent(0.7), fontName: "Helvetica", fontSize: 11)
        }()
        
        header.addSubview(lastNameLabel)
        lastNameLabel.anchor(left: header.leftAnchor, pendingTop: 0, pendingleft: 4, pendingBottom: 0, pendingRight: 0)
        lastNameLabel.centerY(inView: header)
        return header
    }
    
}

class listOfAppointCell: UITableViewCell {
    
    let bgView: UIView = {
        return UIView().customViewCell(viewColor:  UIColor.white, cornarRadius: 10, bordarWidth: 0)
    }()
    
    let profileImage: UIImageView = {
        return UIImageView().profileImages(images: UIImage(named: "me")!, constainMode: .scaleAspectFit, cornarRadius: 22, borderWidth: 2, borderColor: .white)
    }()
    
    let namesStacks: UIStackView = {
        return UIStackView().stackViewS(axis: true, aliements: .leading, distribute: .equalCentering, spacing: 10)
    }()
    
    let firstNameLabel: UILabel = {
        return UILabel().titleLabel(welcomeTitle: "Muhammad Rehan", textColor: UIColor.black, fontName: "Helvetica", fontSize: 11)
    }()
    
    let lastNameLabel: UILabel = {
        return UILabel().titleLabel(welcomeTitle: "09 jan 2022, 09am - 02am", textColor: UIColor.systemGray2, fontName: "Helvetica", fontSize: 11)
    }()
    
    
    let appointmentRequestBtn: UIButton = {
        return UIButton().topButtons(imageName: UIImage(systemName: "exclamationmark")!, tintColor: .black)
    }()
    
    
    let activeView: UIView = {
        return UIView().customViewCell(viewColor: UIColor.systemGreen, cornarRadius: 7, bordarWidth: 3, bordarColor: UIColor.white)
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        addSubview(bgView)
        [profileImage, namesStacks, appointmentRequestBtn, activeView].forEach({
            bgView.addSubview($0)
        })
        
        [firstNameLabel, lastNameLabel].forEach({
            namesStacks.addArrangedSubview($0)
        })
        
        bgView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, pendingTop: 5, pendingleft: 10, pendingBottom: -5, pendingRight: 0)
        
        profileImage.anchor(left: bgView.leftAnchor, pendingTop: 0, pendingleft: 5, pendingBottom: 0, pendingRight: 0, width: 60, height: 60)
        profileImage.centerY(inView: bgView)
        
        namesStacks.anchor(left: profileImage.rightAnchor, right: appointmentRequestBtn.leftAnchor, pendingTop: 0, pendingleft: 10, pendingBottom: 0, pendingRight: -8)
        namesStacks.centerY(inView: profileImage)
        
        appointmentRequestBtn.anchor(right: bgView.rightAnchor, pendingTop: 0, pendingleft: 0, pendingBottom: 0, pendingRight: -10)
        appointmentRequestBtn.centerY(inView: namesStacks)
        
        activeView.anchor(bottom: profileImage.bottomAnchor, right: profileImage.rightAnchor, pendingTop: 0, pendingleft: 0, pendingBottom: -2, pendingRight: 3, width: 14, height: 14)
    }
}


