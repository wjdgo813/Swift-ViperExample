//
//  Datas.swift
//  Routus
//
//  Created by Haehyeon Jeong on 2017. 8. 1..
//  Copyright © 2017년 Haehyeon Jeong. All rights reserved.
//

import Foundation
import ObjectMapper

struct Datas {
    var date = ""
    var title = ""
    var content = ""
    var imageUrl = ""
}

extension Datas : Mappable{
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        title       <- map["title"]
        content     <- map["content"]
        imageUrl    <- map["image"]
        date        <- map["date"]
    }
}

