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
import Kingfisher
class JFVideoTableViewCell: UITableViewCell,NibReusable {

    
    @IBOutlet weak var scButton: UIButton!
    @IBOutlet weak var bgImageView: UIImageView!
    @IBOutlet weak var playOrPause: UIButton!
    @IBOutlet weak var playImage: UIImageView!
    @IBOutlet weak var giveLikeButton: UIButton!
    @IBOutlet weak var videoBgView: UIView!
    @IBOutlet weak var countLabel: UILabel!
    
    let isPlay: Bool? = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
//        videoView.frame = CGRect(x: 0, y: 0, width: KScreenWidth - 40~, height: 140~)
//        videoBgView.addSubview(videoView)
        countLabel.text = "测试一下自适应的高度行不行卡机你那是氪金大佬抠脚大汉案件肯德基卡上"
        self.playOrPause.isSelected = true
       
    }
    
    var model: Dictionary<String, String>?{
        didSet{
            guard let model = model else {return}
            self.bgImageView?.kf.setImage(with: URL.init(string: model["image"]!))
            self.countLabel.text = model["title"]
        
        }
        
    }
    
    @IBAction func playOrPauseTap(_ sender: Any) {
        self.playOrPause.isSelected = !self.playOrPause.isSelected
        if self.playOrPause.isSelected {
            self.playImage.image = UIImage.init(named: "play")
        }else{
            self.playImage.image = UIImage.init(named: "pause")
        }
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
    
    @IBAction func scButtonTap(_ sender: Any) {
        self.scButton.isSelected = !self.scButton.isSelected
        
    }
    //    分享
    @IBAction func share(_ sender: Any) {
        
        
    }
    
    
    lazy var videoView: RYVideoView = {
        let videoView = RYVideoView()
       
        return videoView
    }()
    
}
