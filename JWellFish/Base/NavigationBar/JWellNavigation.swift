//
//  JWellNavigation.swift
//  Pods-JWellBaseProject_Tests
//
//  Created by administrator on 2020/1/16.
//
import UIKit

struct JWellNavigation<Base> {
    
    let base: Base
    
    init(_ base: Base) {
        self.base = base
    }
}

protocol NavigationCompatible {
    
    associatedtype CompatibleType
    
    var navigation: CompatibleType { get }
}

extension NavigationCompatible {
    
    var navigation: JWellNavigation<Self> {
        return JWellNavigation(self)
    }
}

extension UIViewController: NavigationCompatible {}
