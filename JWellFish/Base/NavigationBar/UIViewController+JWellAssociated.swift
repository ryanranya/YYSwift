// 
//  UIViewController+Associated.swift
//  Pods-JWellBaseProject_Tests
//
//  Created by administrator on 2020/1/16.
//

import UIKit
import ObjectiveC

extension UINavigationController {
    
    var _configuration: JWellConfiguration {
        if let configuration = objc_getAssociatedObject(
            self,
            &JWellAssociatedKeys.configuration)
            as? JWellConfiguration {
            return configuration
        }
        let configuration = JWellConfiguration()
        objc_setAssociatedObject(
            self,
            &JWellAssociatedKeys.configuration,
            configuration,
            .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        return configuration
    }
}

extension UIViewController {
    
    var _navigationBar: JWellNavigationBar {
        if let bar = objc_getAssociatedObject(self, &JWellAssociatedKeys.navigationBar) as? JWellNavigationBar {
            return bar
        }
        
        let bar = JWellNavigationBar(viewController: self)
        
        objc_setAssociatedObject(
            self,
            &JWellAssociatedKeys.navigationBar,
            bar,
            .OBJC_ASSOCIATION_RETAIN_NONATOMIC
        )
        
        return bar
    }
    
    var _navigationItem: UINavigationItem {
        if let item = objc_getAssociatedObject(self, &JWellAssociatedKeys.navigationItem) as? UINavigationItem {
            return item
        }
        
        let item = JWellNavigationItem(viewController: self)
        item.copy(by: navigationItem)
        
        objc_setAssociatedObject(
            self,
            &JWellAssociatedKeys.navigationItem,
            item,
            .OBJC_ASSOCIATION_RETAIN_NONATOMIC
        )
        
        return item
    }
}

private extension UINavigationItem {
    
    func copy(by navigationItem: UINavigationItem) {
        self.title = navigationItem.title
        self.prompt = navigationItem.prompt
    }
}
