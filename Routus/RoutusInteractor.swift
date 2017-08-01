//
//  RoutusInteractor.swift
//  Routus
//
//  Created by Haehyeon Jeong on 2017. 8. 1..
//  Copyright © 2017년 Haehyeon Jeong. All rights reserved.
//

import Foundation

class RoutusInteractor : RoutusUseCase{
    weak var output: RoutusInteractorOutput!
    
    func fetchDatas() {
        var result : [Datas] = Array()
        var tempDatas1 : Datas = Datas()
        var tempDatas2 : Datas = Datas()
        
        // API 통신 ..
        tempDatas1.content = "content1"
        tempDatas1.date = "2017.10.7"
        tempDatas1.title = "title1"
        tempDatas1.imageUrl = "www.naver.com"
        
        tempDatas2.content = "content2"
        tempDatas2.date = "2017.9.6"
        tempDatas2.title = "title2"
        tempDatas2.imageUrl = "www.afreecatv.com"
        
        result.append(tempDatas1)
        result.append(tempDatas2)
        //
        
        
        self.output.routusFetched(result)
        
    }
}
