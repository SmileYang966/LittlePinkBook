//
//  Test1ViewController.swift
//  LittlePinkBook
//
//  Created by Evan Yang on 2022/5/11.
//

import UIKit
import XLPagerTabStrip

class Test1ViewController: UIViewController,IndicatorInfoProvider {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .brown
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo{
        IndicatorInfo(title: "World")
    }
}
