//
//  JWellShadow.swift
//  Pods-JWellBaseProject_Tests
//
//  Created by administrator on 2020/1/16.
//

import UIKit

struct JWellShadow {
    let color: CGColor?
    let opacity: Float
    let offset: CGSize
    let radius: CGFloat
    let path: CGPath?
   
    static let none: JWellShadow = .init()
   
    init(
        color: CGColor? = nil,
        opacity: Float = 0,
        offset: CGSize = CGSize(width: 0, height: -3),
        radius: CGFloat = 3,
        path: CGPath? = nil
    ) {
        self.color = color
        self.opacity = opacity
        self.offset = offset
        self.radius = radius
        self.path = path
    }
}

extension CALayer {
    
    func apply(_ shadow: JWellShadow) {
        shadowColor = shadow.color
        shadowOpacity = shadow.opacity
        shadowOffset = shadow.offset
        shadowRadius = shadow.radius
        shadowPath = shadow.path
    }
}

