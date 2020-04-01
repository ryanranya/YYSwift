//
//  API.swift
//  GHMoyaNetWorkTest
//
//  Created by Guanghui Liao on 3/30/18.
//  Copyright © 2018 liaoworking. All rights reserved.
//https://github.com/Moya/Moya/blob/master/docs_CN/Examples/Basic.md

import Foundation
import Moya

enum API{
//    case updateAPi(parameters:[String:Any])
//    case register(email:String,password:String)
//    case easyRequset
///获取App配置
    case getAppConfing(parameters:[String:Any])
  
    
}

extension API:TargetType{
    var baseURL: URL {
        switch self {
        case .getAppConfing:
             return URL.init(string:(Moya_APIBaseURL))!
        }
    }
    
    var path: String {
        switch self {
            ///首页 Banner
        case .getAppConfing( _):
            return "adv/homepage"
          
        }
    }
    
    var method: Moya.Method {
//        switch self {
//        case .updateImage:
//            return .get
//
//        default:
//            return .post
//        }
        return .post
    }
    

    //    这个是做单元测试模拟的数据，必须要实现，只在单元测试文件中有作用
    var sampleData: Data {
        return "".data(using: String.Encoding.utf8)!
    }

    //    该条请API求的方式,把参数之类的传进来
    var task: Task {
//        return .requestParameters(parameters: nil, encoding: JSONArrayEncoding.default)
        switch self {
//        case let .register(email, password):
//            return .requestParameters(parameters: ["email": email, "password": password], encoding: JSONEncoding.default)
//        case .easyRequset:
//            return .requestPlain
//        case let .updateAPi(parameters):
//            return .requestParameters(parameters: parameters, encoding: URLEncoding.default)
            
            ///获取App配置
        case let .getAppConfing(parameters):
            return .requestParameters(parameters: parameters, encoding: JSONEncoding.default)
           
        }
        
        //可选参数https://github.com/Moya/Moya/blob/master/docs_CN/Examples/OptionalParameters.md
//        case .users(let limit):
//        var params: [String: Any] = [:]
//        params["limit"] = limit
//        return .requestParameters(parameters: params, encoding: URLEncoding.default)
    }
 
    
    
    var headers: [String : String]? {

        return ["Content-Type":"application/json"]
    }
    
}

