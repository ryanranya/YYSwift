//
//  RYVideoMaskView.swift
//  JWellFish
//
//  Created by administrator on 2020/4/2.
//  Copyright © 2020 jwell. All rights reserved.
//

import UIKit

class RYVideoMaskView: UIButton {
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    顶部工具条
    lazy var topToolBar: UIView = {
        let topToolBar = UIView()
        return topToolBar
    }()
    
//    底部工具条
    lazy var bottomToolBar: UIView = {
        let bottomToolBar = UIView()
        return bottomToolBar
    }()
    
}
