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
    var dataSource:VideoModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        toTopHeight.constant = kTopHeight
        toBottomHeight.constant = tabBarHeight
//        creatVideoView()
        // Do any additional setup after loading the view.
        navigation.item.title = "视频"
        self.viewModel.getDataSource()
        setUpTableView()
    }
    
    func setUpTableView() {
        self.tableView.register(cellType: JFVideoTableViewCell.self)
        self.tableView.estimatedRowHeight = 120
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.separatorStyle = .none
        
    }
    
    lazy var viewModel: VideoViewModel = {
        let viewModel = VideoViewModel()
        viewModel.dataSourceArray = {
            (dataSource: VideoModel) -> () in
            self.dataSource = dataSource
            self.tableView.reloadData()
        }
        return viewModel
    }()


}

extension JFAddressBookViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return (dataSource?.result!.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCell(for: indexPath, cellType: JFVideoTableViewCell.self)
        cell.selectionStyle = .none
        cell.model = self.dataSource!.result![indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    
    
}
