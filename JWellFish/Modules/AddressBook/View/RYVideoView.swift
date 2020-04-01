//
//  RYVideoView.swift
//  JWellFish
//
//  Created by administrator on 2020/3/27.
//  Copyright © 2020 jwell. All rights reserved.
//

import UIKit
import AVKit
import SwiftyFitsize
class RYVideoView: UIView {
    let videoUrl: String = "https://audio01-showstart.taihe.com/0210/M00/DB/94/ChR47F5rOPSAFPDaHq4F3zBCNjs433.mp4"
    
//    var palyerItem: AVPlayerItem?
//    var player: AVPlayer?
//    var playerLayer: AVPlayerLayer?
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        videoSet()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func videoSet() {
        playerLayer.frame = CGRect(x: 0, y: 0, width: KScreenWidth - 20~, height: 140~)
        self.layer.addSublayer(playerLayer)
        self.player.play()

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
      
        
        
    }

//    MARK:-- getter && setter
    lazy var playerItem: AVPlayerItem = {
        let playerItem = AVPlayerItem(url: URL.init(string: "https://audio01-showstart.taihe.com/0210/M00/DB/94/ChR47F5rOPSAFPDaHq4F3zBCNjs433.mp4")!)
        return playerItem
    }()

//    控制播放器的播放，暂停
    lazy var player: AVPlayer = {
        let player = AVPlayer(playerItem: self.playerItem)
        player.rate = 1.0
        return player
    }()

    lazy var playerLayer: AVPlayerLayer = {
        let playerLayer = AVPlayerLayer(player: self.player)
        playerLayer.videoGravity = .resizeAspect
        return playerLayer
    }()
    
}
