//
//  RoutusContract.swift
//  Routus
//
//  Created by Haehyeon Jeong on 2017. 8. 1..
//  Copyright © 2017년 Haehyeon Jeong. All rights reserved.
//

import UIKit

protocol RoutusWireframe: class {
    weak var viewController: UIViewController? { get set }
    
    static func assembleModule() -> UIViewController
    func presentDetails(forDatas datas: Datas)
}


protocol RoutusPresentation: class{
    weak var view: RoutusView? { get set }
    var interactor : RoutusUseCase! { get set }
    var router : RoutusWireframe! { get set }
    
    func viewDidLoad()
    func didClicked(_ data:Datas)
}


protocol RoutusView:class{
    var presenter: RoutusPresentation! { get set }
    func showData(_ datas : [Datas])
    func showNoContents()
}

//interactor
protocol RoutusUseCase: class {
    weak var output: RoutusInteractorOutput! { get set }
    func fetchDatas()
}


protocol RoutusInteractorOutput: class {
    func routusFetched(_ datas: [Datas])
    func routusFetchFailed()
}
