//
//  JWellBackBarButtonItem.swift
//  Pods-JWellBaseProject_Tests
//
//  Created by administrator on 2020/1/16.
//

import UIKit

class JWellBackBarButtonItem: UIBarButtonItem {
    public var shouldBack:(JWellBackBarButtonItem) -> Bool = {_ in true}
    
    public var willBack: () -> Void = {}
    
    public var didBack: () -> Void = {}
    
    weak var navigationController: UINavigationController?

}

extension JWellBackBarButtonItem{
    public enum ItemStyle {
        case title(String?)
        case image(UIImage?)
        case custom(UIButton)
    }
}

extension JWellBackBarButtonItem{
    @objc private func backBarButtonItemAction(){
        guard shouldBack(self) else {
            return
        }
        willBack()
        didBack()
    }
}

extension JWellBackBarButtonItem{
    convenience init(style: ItemStyle, tintColor: UIColor? = nil){
        let action = #selector(backBarButtonItemAction)
        
        switch style {
          case .title(let title):
              self.init(title: title, style: .plain, target: nil, action: action)
              
              self.target = self
              self.tintColor = tintColor
          case .image(let image):
              self.init(image: image, style: .plain, target: nil, action: action)
              
              self.target = self
              self.tintColor = tintColor
          case .custom(let button):
              self.init(customView: button)
              
              button.addTarget(self, action: action, for: .touchUpInside)
              button.tintColor = tintColor
          }
        
    }
    
    func goBack() {
        navigationController?.popViewController(animated: true)
    }
}
