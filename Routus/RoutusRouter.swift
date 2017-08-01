//
//  RoutusRouter.swift
//  Routus
//
//  Created by Haehyeon Jeong on 2017. 7. 29..
//  Copyright © 2017년 Haehyeon Jeong. All rights reserved.
//


import UIKit
class RoutusRouter :RoutusWireframe  {
    

    weak var viewController: UIViewController?
    
    static func assembleModule()->UIViewController{
        let view = R.storyboard.routusMain.routusMainViewController()
        
        
        
        let presenter = RoutusPresenter()
        let interactor = RoutusInteractor()
        let router = RoutusRouter()
        
        let navigation = UINavigationController(rootViewController: view!)
        
        view?.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.output = presenter
        
        router.viewController = view
        
        return navigation
    }
    
    func presentDetails(forDatas datas: Datas) {
        
    }
    
    
    
}
