//
//  VideoModel.swift
//  JWellFish
//
//  Created by administrator on 2020/4/2.
//  Copyright © 2020 jwell. All rights reserved.
//

import UIKit
import HandyJSON

struct VideoModel: HandyJSON {
    var invalidParams: String?
    var isHasResult: String?
    var msg: String?
    var result: [VideoDetail]?
    var state: String?
    
}

struct VideoDetail: HandyJSON {
    var authorName: String?
    var avatar: String?
    var channelId: Int?
    var channelName: String?
    var clickNum: Int?
    var collect: Bool?
    var collectUser: Bool?
    var gifUrl: String?
    var id: String?
    var mediaName: String?
    var mediaTime: String?
    var mediaType: Int?
    var photo: String?
    var praiseNum: Int?
    var userId: String?
    var userType: Int?
    var videoClear: String?
    var videoSource: Int?
    var videoType: Int?
    var videoTypeStr: String?
    var videoUrl: String?
    var isPlay: Bool = false
    
}
