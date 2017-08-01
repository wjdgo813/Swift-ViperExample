//
//  ViewController.swift
//  Routus
//
//  Created by Haehyeon Jeong on 2017. 7. 29..
//  Copyright © 2017년 Haehyeon Jeong. All rights reserved.
//

import UIKit

class RoutusMainViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    var presenter : RoutusPresentation!
    var datas : [Datas] = []{
        didSet{
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setupView(){
        navigationItem.title = "헤헤헤히흐힣"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension RoutusMainViewController : RoutusView {
    func showNoContents() {
        
    }
    
    func showData(_ datas: [Datas]) {
        self.label1.text = datas[0].title
    }
}

