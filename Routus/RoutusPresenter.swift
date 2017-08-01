//
//  RoutusPresenter.swift
//  Routus
//
//  Created by Haehyeon Jeong on 2017. 8. 1..
//  Copyright © 2017년 Haehyeon Jeong. All rights reserved.
//

import Foundation

class RoutusPresenter : RoutusPresentation{
    weak var view: RoutusView?
    var interactor: RoutusUseCase!
    var router : RoutusWireframe!
    
    var datas : [Datas] = [] {
        didSet{
            if datas.count > 0 {
                view?.showData(datas)
            }else{
                view?.showNoContents()
            }
        }
    }
    
    func viewDidLoad(){
        interactor.fetchDatas()
        //로딩뷰 ..
    }
    
    func didClicked(_ data: Datas) {
        router.presentDetails(forDatas: data)
    }
}

extension RoutusPresenter: RoutusInteractorOutput{
    
    func routusFetched(_ datas: [Datas]){
        self.datas = datas
    }
    
    func routusFetchFailed(){
        
    }
}
