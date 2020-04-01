//
//  JFMessageViewController.swift
//  JWellFish
//
//  Created by administrator on 2020/3/25.
//  Copyright © 2020 jwell. All rights reserved.
//

import UIKit
class JFMessageViewController: JFRootViewController {
    let dataArray = ["80","78","90","40","30"]
    let nameArray = ["教育","旅游","房产","数码通讯","电商"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.orange
        setNavigationBar()
        setBarBadge()
    }
    
//    MARK: --设置小红字
    
    func setBarBadge() {
        self.navigationController?.tabBarItem.badgeColor = UIColor .withHex(hexString: "E74F4F")
        self.navigationController?.tabBarItem.badgeValue = "3"
    }
    
//    MARK: -- 设置导航栏
    func setNavigationBar() {
        navigation.item.title = "同步中"
        navigation.item.rightBarButtonItems = [
            rightCallPhoneButton,
            rightBarQRButton
            
        ]
        
    }
    
// MARK: -- 导航栏右侧按钮点击事件
    @objc private func rightBarCallPgoneButtonAction() {
        let loginVC = JFLoginViewController()
        loginVC.hidesBottomBarWhenPushed = true
        loginVC.dataArray = self.dataArray
        loginVC.nameArray = self.nameArray
        self.navigationController?.pushViewController(loginVC, animated: true)
        
    }
    @objc private func rightBarQRButtonAction() {
        DLog("456")
    }
    
// MARK: -- getter && setter
    lazy var rightBarQRButton: UIBarButtonItem = {
        let rightBarQRButton = UIBarButtonItem()
        rightBarQRButton.image = UIImage.init(named: "QR")
        rightBarQRButton.target = self
        rightBarQRButton.action = #selector(rightBarQRButtonAction)
        rightBarQRButton.tintColor = UIColor.withHex(hexString: "#65686F")
        rightBarQRButton.style = .plain
        return rightBarQRButton
    }()
    
    lazy var rightCallPhoneButton: UIBarButtonItem = {
           let rightCallPhoneButton = UIBarButtonItem()
           rightCallPhoneButton.image = UIImage.init(named: "callPhone")
           rightCallPhoneButton.target = self
           rightCallPhoneButton.action = #selector(rightBarCallPgoneButtonAction)
           rightCallPhoneButton.tintColor = UIColor.withHex(hexString: "#65686F")
           rightCallPhoneButton.style = .plain
           return rightCallPhoneButton
       }()
    
}



extension JFMineViewController{
    
}



