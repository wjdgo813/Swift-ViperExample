//
//  RootRouter.swift
//  Routus
//
//  Created by Haehyeon Jeong on 2017. 7. 29..
//  Copyright © 2017년 Haehyeon Jeong. All rights reserved.
//

import UIKit

class RootRouter: RootWireframe {
    
    func presentArticlesScreen(in window: UIWindow) {
        window.makeKeyAndVisible()
        window.rootViewController = RoutusRouter.assembleModule()
    }
}
