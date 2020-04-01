//
//  JFVideoTableViewCell.swift
//  JWellFish
//
//  Created by administrator on 2020/4/1.
//  Copyright © 2020 jwell. All rights reserved.
//

import UIKit
import Reusable
import SwiftyFitsize
class JFVideoTableViewCell: UITableViewCell,NibReusable {

    @IBOutlet weak var videoBgView: UIView!
    @IBOutlet weak var countLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        videoView.frame = CGRect(x: 0, y: 0, width: KScreenWidth - 40~, height: 140~)
        videoBgView.addSubview(videoView)
        countLabel.text = "测试一下自适应的高度行不行卡机你那是氪金大佬抠脚大汉案件肯德基卡上"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    lazy var videoView: RYVideoView = {
        let videoView = RYVideoView()
       
        return videoView
    }()
    
}
