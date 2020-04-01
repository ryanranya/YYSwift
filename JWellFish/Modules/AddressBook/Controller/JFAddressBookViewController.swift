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
    let datasource = ["videoUrl":"","title":""]
    
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
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCell(for: indexPath, cellType: JFVideoTableViewCell.self)
        cell.selectionStyle = .none
        if indexPath.row == 0 {
            self.videoView.player.play()
        }else{
            self.videoView.player.pause()
        }
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}
