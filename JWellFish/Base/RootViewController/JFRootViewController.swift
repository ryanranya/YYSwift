//
//  DMRootViewController.swift
//  MSProject
//
//  Created by administrator on 2020/1/28.
//  Copyright © 2020 jwell. All rights reserved.
//

import UIKit

class JFRootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        if #available(iOS 11.0, *) {
             UIScrollView.appearance().contentInsetAdjustmentBehavior = .never
         }else{
             automaticallyAdjustsScrollViewInsets = false
         }
        
        navigation.bar.backBarButtonItem?.willBack = {
            
        }
        
        navigation.bar.backBarButtonItem?.didBack = {
            self.navigationController?.popViewController(animated: true)
        }
        setUI()
        setViewLocation()
    }
    
    func setUI() {
        
    }
    
    func setViewLocation() {
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
