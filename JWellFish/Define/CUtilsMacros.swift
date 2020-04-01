//
//  JWellCUtilsMacros.swift
//  JWellCarrierTreasure
//
//  Created by Ryan on 2018/11/8.
//  Copyright © 2018 Ryan. All rights reserved.
//
import SnapKit
import UIKit
import SystemConfiguration.CaptiveNetwork

//MARK -- 获取系统对象
let kApplication = UIApplication.shared
let kAppWindow = UIApplication.shared.delegate?.window

//打印信息
func DLog<T>(_ message : T, file : String = #file, funcName : String = #function, lineNum : Int = #line) {
    #if DEBUG
    let fileName = (file as NSString).lastPathComponent
    print("\n>>> \(Date())  \(fileName) (line: \(lineNum)): \(message)\n")
    #endif
}

//MARk -- 获取
let KScreenWidth = UIScreen.main.bounds.size.width
let KScreenHeigth = UIScreen.main.bounds.size.height
let kStatusBarHeight = UIApplication.shared.statusBarFrame.size.height
let kNavBarHeight:(CGFloat) = 44.0

let kTopHeight = kStatusBarHeight + kNavBarHeight
// iphone X
//let isIphoneX = (KScreenHeigth == 812 || KScreenHeigth == 896) ? true : false
var isIphoneX: Bool {
    return UI_USER_INTERFACE_IDIOM() == .phone
        && (max(UIScreen.main.bounds.height, UIScreen.main.bounds.width) == 812
            || max(UIScreen.main.bounds.height, UIScreen.main.bounds.width) == 896)
}
// navigationBarHeight
let navigationBarHeight : CGFloat = isIphoneX ? 88 : 64
// tabBarHeight
let tabBarHeight : CGFloat = isIphoneX ? 49 + 34 : 49
// 屏幕适配 375 6S尺寸
func KSP(_ V: CGFloat) -> CGFloat{
    return (UIScreen.main.bounds.width / 375) * V;
}
// Tabbar safe bottom margin.
let kTAB_IPHONE_X:CGFloat = isIphoneX ? 34.0 : 0.0



var topVC: UIViewController? {
    var resultVC: UIViewController?
    resultVC = _topVC(UIApplication.shared.keyWindow?.rootViewController)
    while resultVC?.presentedViewController != nil {
        resultVC = _topVC(resultVC?.presentedViewController)
    }
    return resultVC
}

private  func _topVC(_ vc: UIViewController?) -> UIViewController? {
    if vc is UINavigationController {
        return _topVC((vc as? UINavigationController)?.topViewController)
    } else if vc is UITabBarController {
        return _topVC((vc as? UITabBarController)?.selectedViewController)
    } else {
        return vc
    }
}

//MARK: SnapKit
extension ConstraintView {

    var usnp: ConstraintBasicAttributesDSL {
        if #available(iOS 11.0, *) {
            return self.safeAreaLayoutGuide.snp
        } else {
            return self.snp
        }
    }
}

extension UICollectionView {
    
    func reloadData(animation: Bool = true) {
        if animation {
            reloadData()
        } else {
            UIView .performWithoutAnimation {
                reloadData()
            }
        }
    }
}

///拨打电话
func callPhone(phoneNumber: String) {
    let urlString = "tel://" + phoneNumber
    if let url = URL(string: urlString) {
        //根据iOS系统版本，分别处理
        if #available(iOS 10, *) {
            UIApplication.shared.open(url, options: [:],
                                      completionHandler: {
                                        (success) in
            })
        } else {
            UIApplication.shared.openURL(url)
        }
    }
}

// MARK: - Tool
extension Array {
    public mutating func append(_ newElement: Element?) {
        if let newElement = newElement {
            self.append(newElement)
        }
    }
    
    public mutating func append<S>(contentsOf newElements: S?) where S : Sequence, S.Iterator.Element == Element {
        if let newElements = newElements {
            self.append(contentsOf: newElements)
        }
    }
    
    public mutating func insert(_ newElement: Element?, at i: Int) {
        if let newElement = newElement {
            self.insert(newElement, at: i)
        }
    }
    
    public func sm_random() -> Iterator.Element? {
            guard count > 0 else { return nil }
            return self[Int(arc4random_uniform(UInt32(count)))]
        }

}

//获取 WiFi 信息
func getWifiInfo() -> (ssid: String, mac: String) {
  if let cfas: NSArray = CNCopySupportedInterfaces() {
    for cfa in cfas {
      if let dict = CFBridgingRetain(
        CNCopyCurrentNetworkInfo(cfa as! CFString)
        ) {
        if let ssid = dict["SSID"] as? String,
          let bssid = dict["BSSID"] as? String {
          return (ssid, bssid)
        }
      }
    }
  }
  return ("未知", "未知")
}
//func isLogin() -> Bool{
//    let model = TBJWellUserInfoModel()
//    let fileData = NSMutableData(contentsOfFile: model.filePath)
//    if fileData != nil {
//        let unarchiver = NSKeyedUnarchiver(forReadingWith: fileData! as Data)
//        let saveUser = unarchiver.decodeObject(forKey: "userKey") as! TBJWellUserInfoModel
//        unarchiver.finishDecoding()
//        if !saveUser.key!.isEmpty {
//            return true
//        }else{
//            return false
//        }
//    }else{
//        return false
//    }
//
//}
