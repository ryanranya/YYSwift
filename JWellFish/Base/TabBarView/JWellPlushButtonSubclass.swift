//
//  JWellPlushButtonSubclass.swift
//  TruckBang
//
//  Created by 冉亚 on 2019/6/24.
//  Copyright © 2019 冉亚. All rights reserved.
//

import UIKit

import CYLTabBarController

class JWellPlushButtonSubclass: CYLPlusButton,CYLPlusButtonSubclassing {
    
    static func plusButton() -> Any {
        let button = JWellPlushButtonSubclass()
        button.setImage(UIImage(named: "shop_tab_icon_box_pre"), for: .normal)
        button.titleLabel?.textAlignment = .center
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        
        button.setTitle("找货", for: .normal)
        button.setTitleColor(UIColor.gray, for: .normal)
        
        button.setTitle("找货", for: .selected)
        button.setTitleColor(CTHEMEColor, for: .selected)
        button.adjustsImageWhenHighlighted = false
        button.sizeToFit()
        return button
    }
    
    static func indexOfPlusButtonInTabBar() -> UInt {
        return 2
    }
    
    static func multiplier(ofTabBarHeight tabBarHeight: CGFloat) -> CGFloat {
        return 0.3
    }
    
    static func constantOfPlusButtonCenterYOffset(forTabBarHeight tabBarHeight: CGFloat) -> CGFloat {
        return  isIphoneX ? -15 : -5
    }
    
    static func plusChildViewController() -> UIViewController {
//        推出哪个试图
        let vc = JFMessageViewController()
        let nav = UINavigationController(rootViewController: vc)
        return nav
    }
    
    static func shouldSelectPlusChildViewController() -> Bool {
        return true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        // tabbar UI layout setup
        let imageViewEdgeWidth:CGFloat  = self.bounds.size.width * 0.7
        let imageViewEdgeHeight:CGFloat = imageViewEdgeWidth
        
        let centerOfView    = self.bounds.size.width * 0.5
        let labelLineHeight = self.titleLabel!.font.lineHeight
        let verticalMargin = (self.bounds.size.height - labelLineHeight - imageViewEdgeHeight ) * 0.5
        
        let centerOfImageView = verticalMargin + imageViewEdgeHeight * 0.5
        let centerOfTitleLabel = imageViewEdgeHeight + verticalMargin * 2  + labelLineHeight * 0.5 + 10
        
        //imageView position layout
        self.imageView!.bounds = CGRect(x:0, y:0, width:imageViewEdgeWidth, height:imageViewEdgeHeight)
        self.imageView!.center = CGPoint(x:centerOfView, y:centerOfImageView)
        
        //title position layout
        self.titleLabel!.bounds = CGRect(x:0, y:0, width:self.bounds.size.width,height:labelLineHeight)
        self.titleLabel!.center = CGPoint(x:centerOfView, y:centerOfTitleLabel)
        
    }
    
  
}
