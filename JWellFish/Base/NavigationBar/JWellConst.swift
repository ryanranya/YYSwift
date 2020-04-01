//
//  JWellConst.swift
//  Pods-JWellBaseProject_Tests
//
//  Created by administrator on 2020/1/16.
//

import UIKit

struct JWellConst {
    struct StatusBar {
        static var maxY: CGFloat {
            if #available(iOS 13, *) {
                return UIApplication.shared.keyWindow?.windowScene?.statusBarManager?.statusBarFrame.maxY ?? 0
            }
            return UIApplication.shared.statusBarFrame.maxY
        }
    }
    struct NavigationBar {
           
       static let height: CGFloat = 44.0
       
       static let layoutPaddings: UIEdgeInsets = .init(top: 0, left: 16, bottom: 0, right: 16)
       
       static let layoutMargins: UIEdgeInsets = .init(top: 8, left: 16, bottom: 8, right: 16)
   }
}
