//
//  JFAddressBookViewController.swift
//  JWellFish
//
//  Created by administrator on 2020/4/1.
//  Copyright © 2020 jwell. All rights reserved.
//

import UIKit
import Reusable
class JFAddressBookViewController: JFRootViewController {

    @IBOutlet weak var toTopHeight: NSLayoutConstraint!
    @IBOutlet weak var toBottomHeight: NSLayoutConstraint!
    @IBOutlet weak var tableView: UITableView!
    
    let datasource = [["videoUrl":"https://audio01-showstart.taihe.com/0210/M00/E3/0B/ChR47F6C8rmAUpjyFf-WI7jWWjE010.mp4","title":"告五人-爱人错过（2019昆明麦田音乐节）","image":"https://s2.showstart.com/img/2020/20200121/d5f7ff9f7fdb427da44293d1ef9e3f0d_1473_1473_3223499.0x0.jpg","praiseNum":"11"],
            ["videoUrl":"https://audio01-showstart.taihe.com/0101/M00/E9/0E/ChR45F5woBeAN99jGboppbV-hPE270.mp4","title":"MOVE!! TUBE 直播第三期—MisterLady","image":"https://s2.showstart.com/img/2020/20200317/bc458cf1e84541dfbf124126c2ad6924_600_336_336011.0x0.jpg"],
        ["videoUrl":"https://audio01-showstart.taihe.com/0102/M00/E8/A9/ChR45V5wt2-Aa79NFzZwFHmyRmo199.mp4","title":"《万千》—刘莱斯","image":"https://s2.showstart.com/img/2020/20200317/b351b54a006b4c0082ab1eec9485766e_600_336_317233.0x0.jpg"],
        
                      ["videoUrl":"https://audio01-showstart.taihe.com/0207/M00/C5/09/ChR47F5vROaAA-W2F_hJjl4bHqs796.mp4","title":"色盲 - 大叫控","image":"https://s2.showstart.com/img/2020/20200316/11b39d88e1444813be5b29f7831caa44_600_336_44392.0x0.jpg"],
                      ["videoUrl":"https://audio01-showstart.taihe.com/0206/M00/FB/55/ChR47F6Eb2uAQNTdBQKqHpTZ1no533.mp4","title":"旺福 - 噴跑吧!!!青春!!!!! ","image":"https://s2.showstart.com/img/2020/20200401/b55b6dddd2864e2783659c714fcf527f_600_336_62454.0x0.jpg"],
                      ["videoUrl":"https://audio01-showstart.taihe.com/0208/M00/1E/47/ChR47F6Bk66AEUghAoCVWnfKfe4835.mp4","title":"Pompeya-Do (Official Video)","image":"https://s2.showstart.com/img/2020/20200330/7bf6b39f37c9408a9e1a4fedc1b177be_600_336_314907.0x0.jpg"],
                      ["videoUrl":"https://audio01-showstart.taihe.com/0207/M00/C7/89/ChR47F6C9XuAAlLoBIb1mUSTJFo660.mp4","title":"《Down By The Water》——The Drums","image":"https://s2.showstart.com/img/2020/20200331/6b97733b93d94d46aae98aab6d1d73ec_1289_593_1205342.0x0.jpg"],
                      ["videoUrl":"https://audio01-showstart.taihe.com/0105/M00/EA/C0/ChR45F6BtiKATTT1AzW0yAwwoxM887.mp4","title":"MOVE!! TUBE 直播第一期——告五人 part1","image":"https://s2.showstart.com/img/2020/20200313/5947bc7db03b4505b04ecab36dd2a946_600_335_48476.0x0.jpg"],
                      ["videoUrl":"https://audio01-showstart.taihe.com/0105/M00/EA/C0/ChR45F6BtiKATTT1AzW0yAwwoxM887.mp4","title":"《给你》","image":"https://s2.showstart.com/img/2020/20200330/26adc249117b41ba9a0274f555344452_600_336_27430.0x0.jpg"],
                      ["videoUrl":"https://audio01-showstart.taihe.com/0207/M00/C7/89/ChR47F6C9XuAAlLoBIb1mUSTJFo660.mp4","title":"告五人-带我去找夜生活MV","image":"https://s2.showstart.com/img/2020/20200331/4d2f0a69871a4aa69b4da26e3f76f362_600_336_327567.0x0.jpg"],
                      ["videoUrl":"https://audio01-showstart.taihe.com/0207/M00/C7/89/ChR47F6C9XuAAlLoBIb1mUSTJFo660.mp4","title":"《Down By The Water》——The Drums","image":"https://s2.showstart.com/img/2020/20200331/6b97733b93d94d46aae98aab6d1d73ec_1289_593_1205342.0x0.jpg"],]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toTopHeight.constant = kTopHeight
        toBottomHeight.constant = tabBarHeight
//        creatVideoView()
        // Do any additional setup after loading the view.
        navigation.item.title = "视频"
        setUpTableView()
    }
    
    func setUpTableView() {
        self.tableView.register(cellType: JFVideoTableViewCell.self)
        self.tableView.estimatedRowHeight = 120
        self.tableView.rowHeight = UITableView.automaticDimension
        
    }
    
    func creatVideoView() {
           self.view.addSubview(videoView)
           videoView.snp.makeConstraints { (make) in
               make.left.right.top.bottom.equalTo(0)
           }
           
       }
       
    lazy var videoView: RYVideoView = {
            let videoView = RYVideoView()
            return videoView
        }()

}

extension JFAddressBookViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCell(for: indexPath, cellType: JFVideoTableViewCell.self)
        cell.selectionStyle = .none
        if indexPath.row == 0 {
            self.videoView.player.play()
        }else{
            self.videoView.player.pause()
        }
        cell.model = self.datasource[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}
