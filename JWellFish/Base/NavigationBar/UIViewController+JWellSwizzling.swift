// 
//  UIViewController+Swizzling.swift
//  Pods-JWellBaseProject_Tests
//
//  Created by administrator on 2020/1/16.
//
import UIKit

infix operator <=>

extension UIViewController {
    
    static let methodSwizzling: Void = {
        #selector(viewDidLoad) <=> #selector(navigation_viewDidLoad)
        #selector(viewWillAppear(_:)) <=> #selector(navigation_viewWillAppear(_:))
        #selector(setNeedsStatusBarAppearanceUpdate) <=> #selector(navigation_setNeedsStatusBarAppearanceUpdate)
        #selector(viewDidLayoutSubviews) <=> #selector(navigation_viewDidLayoutSubviews)
    }()
    
    var isNavigationBarEnabled: Bool {
        guard let navigationController = navigationController,
            navigationController.navigation.configuration.isEnabled,
            navigationController.viewControllers.contains(self) else { return false }
        return true
    }
    
    @objc func navigation_viewDidLoad() {
        navigation_viewDidLoad()
        
        guard isNavigationBarEnabled else { return }
        
        setupNavigationBarWhenViewDidLoad()
        
        if let tableViewController = self as? UITableViewController {
            tableViewController.observeContentOffset()
        }
    }
    
    @objc func navigation_viewWillAppear(_ animated: Bool) {
        navigation_viewWillAppear(animated)
        
        guard isNavigationBarEnabled else { return }
        
        updateNavigationBarWhenViewWillAppear()
    }
    
    @objc func navigation_setNeedsStatusBarAppearanceUpdate() {
        navigation_setNeedsStatusBarAppearanceUpdate()
        
        adjustsNavigationBarLayout()
    }
    
    @objc func navigation_viewDidLayoutSubviews() {
        navigation_viewDidLayoutSubviews()
        
        view.bringSubviewToFront(_navigationBar)
    }
}

private extension Selector {
    
    static func <=> (left: Selector, right: Selector) {
        if let originalMethod = class_getInstanceMethod(UIViewController.self, left),
            let swizzledMethod = class_getInstanceMethod(UIViewController.self, right) {
            method_exchangeImplementations(originalMethod, swizzledMethod)
        }
    }
}
