//
//  NearByViewController.swift
//  LittlePinkBook
//
//  Created by Evan Yang on 2022/5/7.
//

import UIKit
import XLPagerTabStrip

class NearByViewController: ButtonBarPagerTabStripViewController , IndicatorInfoProvider{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        IndicatorInfo(title: "附近")
    }
    
    override public func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let vc1 = Test1ViewController()
        let vc2 = Test2ViewController()
        return [vc1,vc2,vc2,vc1]
    }
}
