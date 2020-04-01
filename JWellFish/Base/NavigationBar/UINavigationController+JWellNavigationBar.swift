// 
//  UINavigationController+EachNavigationBar.swift
//  Pods-JWellBaseProject_Tests
//
//  Created by administrator on 2020/1/16.
//
import UIKit

extension UINavigationController {
    
    open override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        guard _configuration.isEnabled else { return }
        
        sendNavigationBarToBack()
        
        guard let bar = topViewController?._navigationBar else { return }
        
        isNavigationBarHidden = false
        navigationBar.isHidden = bar.isHidden
        
        bar.adjustsLayout()
        
        topViewController?.adjustsSafeAreaInsetsAfterIOS11()
    }
    
    override open func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        guard #available(iOS 11.0, *), _configuration.isEnabled else { return }
        
        topViewController?._navigationBar.adjustsLayout()
    }
    
    func sendNavigationBarToBack() {
        navigationBar.tintColor = UIColor.clear
        if navigationBar.shadowImage == nil {
            let image = UIImage()
            navigationBar.setBackgroundImage(image, for: .default)
            navigationBar.shadowImage = image
            navigationBar.backIndicatorImage = image
            navigationBar.backIndicatorTransitionMaskImage = image
        }
        view.sendSubviewToBack(navigationBar)
    }
}
