//
//  UIViewController+Navigation.swift
//  Pods-JWellBaseProject_Tests
//
//  Created by administrator on 2020/1/16.
//
import UIKit

extension JWellNavigation where Base: UIViewController {
    
    var bar: JWellNavigationBar {
        assert(!(base is UINavigationController),
               "UINavigationController can't use this property, please use configuration.")
    return base._navigationBar
    }
    
    var item: UINavigationItem {
        assert(!(base is UINavigationController),
               "UINavigationController can't use this property, please use configuration.")
        return base._navigationItem
    }
}

extension JWellNavigation where Base: UINavigationController {
    
    var configuration: UINavigationController.JWellConfiguration {
        return base._configuration
    }
}
