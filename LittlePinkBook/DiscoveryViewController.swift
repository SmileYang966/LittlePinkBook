//
//  DiscoveryViewController.swift
//  LittlePinkBook
//
//  Created by Evan Yang on 2022/5/7.
//

import UIKit
import XLPagerTabStrip

class DiscoveryViewController: ButtonBarPagerTabStripViewController , IndicatorInfoProvider{

    override func viewDidLoad() {
        settings.style.buttonBarItemBackgroundColor = UIColor.clear
        settings.style.buttonBarItemFont = UIFont.systemFont(ofSize: 14)
        settings.style.selectedBarHeight = 0.0
        
        super.viewDidLoad()
        
        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
 
            oldCell?.label.textColor = .secondaryLabel
            newCell?.label.textColor = .label
        }
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        IndicatorInfo(title: "发现")
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        var vcArray = [UIViewController]()
        for channel in kChannels{
            let waterFallVCID = storyboard!.instantiateViewController(withIdentifier: kWaterFallVCID) as! WaterFallCollectionViewController
            waterFallVCID.channel = channel
            vcArray.append(waterFallVCID)
        }
        
        return vcArray
    }
}
