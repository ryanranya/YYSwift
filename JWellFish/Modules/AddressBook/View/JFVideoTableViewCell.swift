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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
     
    }
    
    var model: VideoDetail?{
        didSet{
            guard let model = model else {return}
            self.bgImageView?.kf.setImage(with: URL.init(string: model.photo!))
            self.countLabel.text = model.mediaName
            if model.isPlay {
                self.playImage.image = UIImage.init(named: "pause")
            }else{
                self.playImage.image = UIImage.init(named: "play")
            }
        }
        
    }
    
    @IBAction func playOrPauseTap(_ sender: Any) {
        if self.model!.isPlay {
            self.model!.isPlay = false
            self.playImage.image = UIImage.init(named: "play")
        }else{
            self.model!.isPlay = true
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
