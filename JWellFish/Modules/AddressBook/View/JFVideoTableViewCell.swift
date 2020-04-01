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

    @IBOutlet weak var giveLikeButton: UIButton!
    @IBOutlet weak var collectionButton: UIButton!
    @IBOutlet weak var videoBgView: UIView!
    @IBOutlet weak var countLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
//        videoView.frame = CGRect(x: 0, y: 0, width: KScreenWidth - 40~, height: 140~)
//        videoBgView.addSubview(videoView)
        countLabel.text = "测试一下自适应的高度行不行卡机你那是氪金大佬抠脚大汉案件肯德基卡上"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    //点赞
    @IBAction func giveLikeTap(_ sender: Any) {
        self.giveLikeButton.isSelected = !self.giveLikeButton.isSelected
    }
//    评论
    @IBAction func messageTap(_ sender: Any) {
    }
//    收藏
    @IBAction func collectionTap(_ sender: Any) {
        self.collectionButton.isSelected = !self.collectionButton.isSelected
    }
//    分享
    @IBAction func share(_ sender: Any) {
    }
    lazy var videoView: RYVideoView = {
        let videoView = RYVideoView()
       
        return videoView
    }()
    
}
