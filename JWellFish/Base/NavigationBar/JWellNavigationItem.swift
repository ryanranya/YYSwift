//
//  JWellNavigationItem.swift
//  Pods-JWellBaseProject_Tests
//
//  Created by administrator on 2020/1/16.
//

import UIKit

class JWellNavigationItem: UINavigationItem {
    private weak var viewController: UIViewController?
    
    convenience init(viewController: UIViewController?) {
        self.init()
        
        self.viewController = viewController
    }
    
    override var title: String? {
        didSet { viewController?.navigationItem.title = title }
    }
    
    @available(iOS 11.0, *)
    override var largeTitleDisplayMode: UINavigationItem.LargeTitleDisplayMode {
        get { super.largeTitleDisplayMode }
        set {
            super.largeTitleDisplayMode = newValue
            
            viewController?.navigationItem.largeTitleDisplayMode = newValue
        }
    }

}
