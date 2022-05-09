//
//  FollowViewController.swift
//  LittlePinkBook
//
//  Created by Evan Yang on 2022/5/7.
//

import UIKit
import XLPagerTabStrip

class FollowViewController: UIViewController ,IndicatorInfoProvider{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        IndicatorInfo(title: "同伴")
    }
}
