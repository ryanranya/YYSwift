//
//  DMTabBarViewController.swift
//  MSProject
//
//  Created by administrator on 2020/1/28.
//  Copyright © 2020 jwell. All rights reserved.
//

import UIKit
import CYLTabBarController

class DMTabBarViewController: CYLTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        //tabbar背景色
        UITabBar.appearance().backgroundColor = UIColor.white
        //tabbar字体颜色
        UITabBar.appearance().tintColor = UIColor.withHex(hexString: "#E74F4F")
        UITabBar.appearance().insertSubview(tabbarBackgroundView, at: 0)
        //移除顶部线条
        self.hideTabBarShadowImageView()
        //添加阴影
        tabBar.layer.shadowColor = UIColor.withHex(hexString: "#D5D5D5").cgColor
        tabBar.layer.shadowOffset = CGSize(width: 0, height: -4)
        tabBar.layer.shadowOpacity = 1
        tabBar.layer.shadowRadius = 8
        }
    
        lazy var tabbarBackgroundView: UIView = {
            let tabbarBackgroundView = UIView()
            tabbarBackgroundView.backgroundColor = UIColor.white
            tabbarBackgroundView.frame = self.tabBar.bounds
            return tabbarBackgroundView
        }()
    
}


@available(iOS 11.0, *)
func viewControllers() -> [UINavigationController] {
    
    let message = UINavigationController(rootViewController: JFMessageViewController())

    let addressBook = UINavigationController(rootViewController: JFAddressBookViewController())
     let workbench = UINavigationController(rootViewController: JFWorkbenchViewController())
    let mine = UINavigationController(rootViewController: JFMineViewController())
    
    let viewController = [message, addressBook, workbench,mine]
    
    for nav in viewController {
        nav.navigation.configuration.isEnabled = true
        nav.navigation.configuration.barTintColor = UIColor.white
        nav.navigation.configuration.tintColor = UIColor.black
        nav.navigation.configuration.isShadowHidden = true
        nav.navigation.configuration.backItem = UINavigationController.JWellConfiguration.BackItem(style: .image(UIImage.init(named: "back")))
    }
    
    return viewController
    
}

func tabBarItemsAttributesForController() -> [[String: String]] {
    let tabBarItemMessage = [CYLTabBarItemTitle:"消息", CYLTabBarItemImage:"tab_icon_message_nor", CYLTabBarItemSelectedImage:"tab_icon_message_pre"]
    let tabBarItemAddressBook = [CYLTabBarItemTitle:"通讯录", CYLTabBarItemImage:"tab_icon_addressbook_nor", CYLTabBarItemSelectedImage:"tab_icon_addressbook_pre"]
     let tabBarItemWorkbench = [CYLTabBarItemTitle:"工作台",
        CYLTabBarItemImage:"tab_icon_workbench_nor", CYLTabBarItemSelectedImage:"tab_icon_workbench_pre"]
    let tabBarItemMine = [CYLTabBarItemTitle:"我的", CYLTabBarItemImage:"tab_icon_me_nor", CYLTabBarItemSelectedImage:"tab_icon_me_pre"]
    let tabBarItemsAttributes = [tabBarItemMessage,tabBarItemAddressBook,tabBarItemWorkbench,tabBarItemMine]
    return tabBarItemsAttributes
    
}

extension DMTabBarViewController{
    
//    override func setViewDidLayoutSubViewsBlockInvokeOnce(_ invokeOnce: Bool, block viewDidLayoutSubviewsBlock: @escaping CYLViewDidLayoutSubViewsBlock) {
//        let viewController = tabBarController?.viewControllers![0]
//        viewController!.cyl_badgeBackgroundColor = UIColor.withHex(hexString: "#E74F4F")
//        viewController!.cyl_badgeCenterOffset = CGPoint(x: -5, y: 3)
//        viewController!.cyl_showBadgeValue("99+", animationType: CYLBadgeAnimationType.none)
//        viewController!.cyl_showBadge()
//        
//    }
    
    override func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
//            self.updateSelectionStatusIfNeeded(for: tabBarController, shouldSelect: viewController)
//
//            if tabBarController.cyl_tabIndex == 1 || tabBarController.cyl_tabIndex == 4 {
//
//                guard isLogin() else{
//                    let loginVC = TBLoginViewController()
//                    topVC?.navigationController?.pushViewController(loginVC, animated: true)
//                    return false
//                }
//
//            }
        
        return true
    }
    
    override func tabBarController(_ tabBarController: UITabBarController, didSelect control: UIControl) {
        var animationView = UIView()
//        if control.cyl_tabBarChildViewControllerIndex == 2 {
//            let button = JWellPlushButtonSubclass()
//            animationView = button.imageView!
//        }else{
            for subView in control.subviews{
                if subView .isKind(of: NSClassFromString("UITabBarSwappableImageView")!){
                    animationView = subView
                }
            }
//        }
        
        addScaleAnimationOnView(animationView: animationView)
    
    }
    
    func addScaleAnimationOnView(animationView:UIView) {
        let animation = CAKeyframeAnimation()
        animation.keyPath = "transform.scale"
        animation.values = [1.0,1.3,0.9,1.15,0.95,1.02,1.0]
        animation.duration = 1
        animation.calculationMode = .cubic
        animationView.layer.add(animation, forKey: nil)
    }
}

