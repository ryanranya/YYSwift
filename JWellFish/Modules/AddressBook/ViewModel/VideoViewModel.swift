//
//  VideoViewModel.swift
//  JWellFish
//
//  Created by administrator on 2020/4/2.
//  Copyright © 2020 jwell. All rights reserved.
//

import UIKit
import HandyJSON
class VideoViewModel: NSObject {
    
    var dataSourceArray: ((_ dataSource: VideoModel) -> ())?

}

extension VideoViewModel{
    
    func getDataSource() {
        let data  = """
        {
            "invalidParams": null,
            "isHasResult": "1",
            "msg": "",
            "result": [{
                "authorName": "告五人 Accusefive",
                "avatar": "https://s2.showstart.com/img/2020/20200121/d5f7ff9f7fdb427da44293d1ef9e3f0d_1473_1473_3223499.0x0.jpg",
                "channelId": 0,
                "channelName": "",
                "clickNum": 72,
                "collect": false,
                "collectUser": false,
                "gifUrl": "",
                "id": "5e82f463e4b03df7a73321cc",
                "mediaName": "告五人-爱人错过（2019昆明麦田音乐节）",
                "mediaTime": "04:47",
                "mediaType": 2,
                "photo": "https://s2.showstart.com/img/2020/20200331/4631f17550ad4c12a4a5327965543306_600_335_250381.0x0.jpg",
                "praiseNum": 13,
                "userId": "1697207",
                "userType": 2,
                "videoClear": "1920x1080",
                "videoSource": 4,
                "videoType": 3,
                "videoTypeStr": "Live现场",
                "videoUrl": "https://audio01-showstart.taihe.com/0210/M00/E3/0B/ChR47F6C8rmAUpjyFf-WI7jWWjE010.mp4"
            }, {
                "authorName": "MOVE!! TUBE",
                "avatar": "https://s2.showstart.com/img/2020/20200227/129e98391c16437e87d107ff3c953ee1_227_227_48648.0x0.jpg",
                "channelId": 0,
                "channelName": "",
                "clickNum": 46,
                "collect": false,
                "collectUser": false,
                "gifUrl": "",
                "id": "5e6b749fe4b09ce6ae9b17db",
                "mediaName": "MOVE!! TUBE 直播第一期——告五人 part1",
                "mediaTime": "09:21",
                "mediaType": 2,
                "photo": "https://s2.showstart.com/img/2020/20200313/5947bc7db03b4505b04ecab36dd2a946_600_335_48476.0x0.jpg",
                "praiseNum": 10,
                "userId": "3559589",
                "userType": 5,
                "videoClear": "720x480",
                "videoSource": 4,
                "videoType": 3,
                "videoTypeStr": "Live现场",
                "videoUrl": "https://audio01-showstart.taihe.com/0210/M00/DB/9D/ChR4615rdJyAdaa8Cv0punFNpMQ800.mp4"
            }, {
                "authorName": "Xtina",
                "avatar": "https://s2.showstart.com/img/2020/20200330/4d1c614fbe854a2da19ffdcca81b366d_190_190_10854.0x0.jpg",
                "channelId": 0,
                "channelName": "",
                "clickNum": 19,
                "collect": false,
                "collectUser": false,
                "gifUrl": "",
                "id": "5e81b655e4b03df7a73321bc",
                "mediaName": "《给你》",
                "mediaTime": "00:54",
                "mediaType": 2,
                "photo": "https://s2.showstart.com/img/2020/20200330/26adc249117b41ba9a0274f555344452_600_336_27430.0x0.jpg",
                "praiseNum": 4,
                "userId": "2683350",
                "userType": 2,
                "videoClear": "1920x1080",
                "videoSource": 4,
                "videoType": 3,
                "videoTypeStr": "Live现场",
                "videoUrl": "https://audio01-showstart.taihe.com/0105/M00/EA/C0/ChR45F6BtiKATTT1AzW0yAwwoxM887.mp4"
            }, {
                "authorName": "告五人 Accusefive",
                "avatar": "https://s2.showstart.com/img/2020/20200121/d5f7ff9f7fdb427da44293d1ef9e3f0d_1473_1473_3223499.0x0.jpg",
                "channelId": 0,
                "channelName": "",
                "clickNum": 24,
                "collect": false,
                "collectUser": false,
                "gifUrl": "",
                "id": "5e82eda3e4b09f7b1657470d",
                "mediaName": "告五人-带我去找夜生活MV",
                "mediaTime": "05:25",
                "mediaType": 2,
                "photo": "https://s2.showstart.com/img/2020/20200331/4d2f0a69871a4aa69b4da26e3f76f362_600_336_327567.0x0.jpg",
                "praiseNum": 2,
                "userId": "1697207",
                "userType": 2,
                "videoClear": "854x480",
                "videoSource": 4,
                "videoType": 1,
                "videoTypeStr": "MV",
                "videoUrl": "https://audio01-showstart.taihe.com/0105/M00/EB/4D/ChR45F6C7QSAWNa4AXZ8EgqlJ5Y902.mp4"
            }, {
                "authorName": "Haze Sounds (雾霾之声)",
                "avatar": "https://s2.showstart.com/qn_9b47d941acca4a62b428b973d8938aa7_190_190_7025.0x0.jpg",
                "channelId": 0,
                "channelName": "",
                "clickNum": 6,
                "collect": false,
                "collectUser": false,
                "gifUrl": "https://dynamic01-showstart.taihe.com/0101/M00/EB/B3/ChR45F6C9oeART8rAAdyv6qSNEM646.gif",
                "id": "5e82f709e4b0dbc9309b48d1",
                "mediaName": "《Down By The Water》——The Drums",
                "mediaTime": "",
                "mediaType": 2,
                "photo": "https://s2.showstart.com/img/2020/20200331/6b97733b93d94d46aae98aab6d1d73ec_1289_593_1205342.0x0.jpg",
                "praiseNum": 2,
                "userId": "94446",
                "userType": 5,
                "videoClear": "1920x1080",
                "videoSource": 4,
                "videoType": 3,
                "videoTypeStr": "Live现场",
                "videoUrl": "https://audio01-showstart.taihe.com/0207/M00/C7/89/ChR47F6C9XuAAlLoBIb1mUSTJFo660.mp4"
            }, {
                "authorName": "Pompeya",
                "avatar": "https://s2.showstart.com/img/2019/20190325/c21faf62f40f46c3b391b4d4ac1bb255_1601_1601_4490028.0x0.jpg",
                "channelId": 0,
                "channelName": "",
                "clickNum": 2,
                "collect": false,
                "collectUser": false,
                "gifUrl": "",
                "id": "5e81994ce4b03df7a73321b7",
                "mediaName": "Pompeya-Do (Official Video)",
                "mediaTime": "04:23",
                "mediaType": 2,
                "photo": "https://s2.showstart.com/img/2020/20200330/7bf6b39f37c9408a9e1a4fedc1b177be_600_336_314907.0x0.jpg",
                "praiseNum": 2,
                "userId": "2305266",
                "userType": 2,
                "videoClear": "1920x1012",
                "videoSource": 4,
                "videoType": 1,
                "videoTypeStr": "MV",
                "videoUrl": "https://audio01-showstart.taihe.com/0208/M00/1E/47/ChR47F6Bk66AEUghAoCVWnfKfe4835.mp4"
            }, {
                "authorName": "旺福",
                "avatar": "https://s2.showstart.com/img/2019/20190723/b47cf9f18794469886c60256e001da1d_2048_2048_5599347.0x0.jpg",
                "channelId": 0,
                "channelName": "",
                "clickNum": 3,
                "collect": false,
                "collectUser": false,
                "gifUrl": "",
                "id": "5e846f76e4b09f7b1657471d",
                "mediaName": "旺福 - 噴跑吧!!!青春!!!!! ",
                "mediaTime": "03:51",
                "mediaType": 2,
                "photo": "https://s2.showstart.com/img/2020/20200401/b55b6dddd2864e2783659c714fcf527f_600_336_62454.0x0.jpg",
                "praiseNum": 0,
                "userId": "2751187",
                "userType": 2,
                "videoClear": "1280x720",
                "videoSource": 4,
                "videoType": 3,
                "videoTypeStr": "Live现场",
                "videoUrl": "https://audio01-showstart.taihe.com/0206/M00/FB/55/ChR47F6Eb2uAQNTdBQKqHpTZ1no533.mp4"
            }, {
                "authorName": "大叫控",
                "avatar": "https://s2.showstart.com/img/2019/20191212/3854457cdef44438b71b6e61aaabe3ee_190_190_17540.0x0.jpg",
                "channelId": 0,
                "channelName": "",
                "clickNum": 102,
                "collect": false,
                "collectUser": false,
                "gifUrl": "",
                "id": "5e6f471ce4b092a837e65728",
                "mediaName": "色盲 - 大叫控",
                "mediaTime": "03:38",
                "mediaType": 2,
                "photo": "https://s2.showstart.com/img/2020/20200316/11b39d88e1444813be5b29f7831caa44_600_336_44392.0x0.jpg",
                "praiseNum": 9,
                "userId": "779098",
                "userType": 2,
                "videoClear": "1920x1080",
                "videoSource": 4,
                "videoType": 3,
                "videoTypeStr": "Live现场",
                "videoUrl": "https://audio01-showstart.taihe.com/0207/M00/C5/09/ChR47F5vROaAA-W2F_hJjl4bHqs796.mp4"
            }, {
                "authorName": "刘莱斯",
                "avatar": "https://s2.showstart.com/qn_9b7c35e940a2422e964eddbefb4de2c3_190_190_30151.0x0.jpg",
                "channelId": 0,
                "channelName": "",
                "clickNum": 34,
                "collect": false,
                "collectUser": false,
                "gifUrl": "",
                "id": "5e70bb7de4b092a837e6573a",
                "mediaName": "《万千》—刘莱斯",
                "mediaTime": "05:01",
                "mediaType": 2,
                "photo": "https://s2.showstart.com/img/2020/20200317/b351b54a006b4c0082ab1eec9485766e_600_336_317233.0x0.jpg",
                "praiseNum": 4,
                "userId": "1023672",
                "userType": 2,
                "videoClear": "1920x1080",
                "videoSource": 4,
                "videoType": 3,
                "videoTypeStr": "Live现场",
                "videoUrl": "https://audio01-showstart.taihe.com/0102/M00/E8/A9/ChR45V5wt2-Aa79NFzZwFHmyRmo199.mp4"
            }, {
                "authorName": "MOVE!! TUBE",
                "avatar": "https://s2.showstart.com/img/2020/20200227/129e98391c16437e87d107ff3c953ee1_227_227_48648.0x0.jpg",
                "channelId": 0,
                "channelName": "",
                "clickNum": 86,
                "collect": false,
                "collectUser": false,
                "gifUrl": "https://dynamic01-showstart.taihe.com/0103/M00/EA/45/ChR45F5wrKaAWgciAAd1zKL9IY8991.gif",
                "id": "5e70a019e4b092a837e65737",
                "mediaName": "MOVE!! TUBE 直播第三期—MisterLady",
                "mediaTime": "26:26",
                "mediaType": 2,
                "photo": "https://s2.showstart.com/img/2020/20200317/bc458cf1e84541dfbf124126c2ad6924_600_336_336011.0x0.jpg",
                "praiseNum": 5,
                "userId": "3559589",
                "userType": 5,
                "videoClear": "1280x720",
                "videoSource": 4,
                "videoType": 3,
                "videoTypeStr": "Live现场",
                "videoUrl": "https://audio01-showstart.taihe.com/0101/M00/E9/0E/ChR45F5woBeAN99jGboppbV-hPE270.mp4"
            }],
            "state": "1"
        }
"""

        if let model = JSONDeserializer<VideoModel>.deserializeFrom(json: data) {
            if self.dataSourceArray != nil {
                self.dataSourceArray!(model)
            }
        }
     
        
    }
    
}
