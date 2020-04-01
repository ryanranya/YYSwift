// 
//  UITableViewController+EachNavigationBar.swift
//  Pods-JWellBaseProject_Tests
//
//  Created by administrator on 2020/1/16.
//
import UIKit

extension UITableViewController {
    
    var observation: NSKeyValueObservation {
        if let observation = objc_getAssociatedObject(
            self,
            &JWellAssociatedKeys.observation
            ) as? NSKeyValueObservation {
            return observation
        }
        
        let observation = tableView.observe(
            \.contentOffset,
            options: .new
        ) { [weak self] tableView, change in
            guard let `self` = self else { return }
            
            self.view.bringSubviewToFront(self._navigationBar)
            self._navigationBar.frame.origin.y = tableView.contentOffset.y + JWellConst.StatusBar.maxY
        }
        
        objc_setAssociatedObject(
            self,
            &JWellAssociatedKeys.observation,
            observation,
            .OBJC_ASSOCIATION_RETAIN_NONATOMIC
        )
        
        return observation
    }
    
    func observeContentOffset() {
        _navigationBar.automaticallyAdjustsPosition = false
        
        _ = observation
    }
}
