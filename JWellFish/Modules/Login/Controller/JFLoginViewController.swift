//
//  JFLoginViewController.swift
//  JWellFish
//
//  Created by administrator on 2020/3/26.
//  Copyright © 2020 jwell. All rights reserved.
//

import UIKit

class JFLoginViewController: JFRootViewController {
    
    var dataArray = [String]()
    var nameArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
//        navigation.bar.isHidden = true
        drawXY(nameArray: nameArray, dataArray: dataArray)
        self.view.addSubview(bgView)
        bgView.snp.makeConstraints { (make) in
            make.left.equalTo(50)
            make.right.equalTo(-50)
            make.top.equalTo(180)
            make.height.equalTo(400)
        }
    }
    
    lazy var bgView: UIView = {
        let bgView = UIView()
        bgView.backgroundColor = UIColor.withHex(hexString: "e1e1e1")
        return bgView
    }()

    func drawXY(nameArray: [String], dataArray: [String]) {
        let path = UIBezierPath()
        //1,x轴
        path.move(to: CGPoint(x: 10, y: 360))
        path.addLine(to: CGPoint(x: (KScreenWidth - 100) - 20, y: 360))
        let width = CGFloat(KScreenWidth - 130)/CGFloat(nameArray.count)
        
//        快排序找出最大的作为 1 进行计算
        let maxNumber = dataArray.sorted(by: >)
        for (index, value) in maxNumber.enumerated() {
            
            let totailHeight = Double(maxNumber[0])
            
            let doubleHeight = Double(value)
            
            let height = (CGFloat(doubleHeight!)) / (CGFloat(totailHeight!)) * 280
            
            let path = UIBezierPath(rect: CGRect(x: 15 + width * CGFloat(index), y:400 - 40 - height, width: CGFloat(40), height: height))
            
            
            let shapeLayer = CAShapeLayer()
            shapeLayer.path = path.cgPath
            shapeLayer.strokeColor = UIColor.orange.cgColor
            shapeLayer.fillColor = UIColor.white.cgColor
            shapeLayer.borderWidth = 2.0
            bgView.layer.addSublayer(shapeLayer)
            
            
        }
        
        for (index,value) in nameArray.enumerated() {
            let titleLabel = UILabel(frame: CGRect(x: width * CGFloat(index), y: 370, width: width, height: 20))
            titleLabel.textAlignment = .center
            titleLabel.text = value
            titleLabel.font = UIFont.systemFont(ofSize: 12)
            bgView.addSubview(titleLabel)
        }
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.borderWidth = 2.0
        bgView.layer.addSublayer(shapeLayer)
        
    }

}
