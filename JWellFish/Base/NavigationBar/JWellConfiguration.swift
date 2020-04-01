//
//  JWellConfiguration.swift
//  Pods-JWellBaseProject_Tests
//
//  Created by administrator on 2020/1/16.
//

import UIKit

extension UINavigationController{
    
    class JWellConfiguration{
        var isEnabled = false{
            didSet { UIViewController.methodSwizzling }
        }
        var isHidden = false
        
        var alpha: CGFloat = 1
        
        var barTintColor: UIColor?
           
        var tintColor: UIColor?
       
        var shadowImage: UIImage?
       
       // Hides shadow image.
        var isShadowHidden: Bool = false
       
        var titleTextAttributes: [NSAttributedString.Key : Any]?
       
        var isTranslucent: Bool = true
       
        var barStyle: UIBarStyle = .default
       
        var statusBarStyle: UIStatusBarStyle = .default
       
       /// Additional height for the navigation bar.
        var additionalHeight: CGFloat = 0
       
        var shadow: JWellShadow?
       
        var backItem: BackItem?
       
       var background: Background = .init()
       
        var _layoutPaddings: UIEdgeInsets = JWellConst.NavigationBar.layoutPaddings
       
        var _prefersLargeTitles: Bool = false
       
        var _largeTitle: LargeTitle = .init()
        
    }
    
}

extension UINavigationController.JWellConfiguration {
    
    @available(iOS 11.0, *)
    /// Padding of navigation bar content view.
    var layoutPaddings: UIEdgeInsets {
        get { _layoutPaddings }
        set { _layoutPaddings = newValue }
    }
    
    @available(iOS 11.0, *)
    var prefersLargeTitles: Bool {
        get { _prefersLargeTitles }
        set { _prefersLargeTitles = newValue }
    }
    
    @available(iOS 11.0, *)
    var largeTitle: LargeTitle {
        get { _largeTitle }
        set { _largeTitle = newValue }
    }
    
    func setBackgroundImage(
        _ backgroundImage: UIImage?,
        for barPosition: UIBarPosition = .any,
        barMetrics: UIBarMetrics = .default
    ) {
        self.background.image = backgroundImage
        self.background.barPosition = barPosition
        self.background.barMetrics = barMetrics
    }
}

extension UINavigationController.JWellConfiguration {
    
    struct BackItem {
        let style: JWellBackBarButtonItem.ItemStyle
        let tintColor: UIColor?
        
        init(style: JWellBackBarButtonItem.ItemStyle, tintColor: UIColor? = nil) {
            self.style = style
            self.tintColor = tintColor
        }
    }
    
    struct LargeTitle {
            var textAttributes: [NSAttributedString.Key: Any]?
            var displayMode: UINavigationItem.LargeTitleDisplayMode = .automatic
    }
    
    struct Background {
        var image: UIImage?
        var barMetrics: UIBarMetrics = .default
        var barPosition: UIBarPosition = .any
    }
}
