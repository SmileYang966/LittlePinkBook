//
//  HomeViewController.swift
//  LittlePinkBook
//
//  Created by Evan Yang on 2022/5/7.
//

import UIKit
import XLPagerTabStrip

class HomeViewController: ButtonBarPagerTabStripViewController {
        
    override func viewDidLoad() {
        
//        self.settings.style.buttonBarBackgroundColor = UIColor.red
        
        
        settings.style.buttonBarItemBackgroundColor = UIColor.clear
        settings.style.buttonBarItemFont = UIFont.systemFont(ofSize: 15)
        settings.style.buttonBarItemLeftRightMargin = 0
        settings.style.selectedBarBackgroundColor = UIColor(named: "tabBarTintColor") ?? UIColor.black
        settings.style.selectedBarHeight = 3.0
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        containerView.bounces = false
        DispatchQueue.main.async {
            self.moveToViewController(at: 1, animated: false)
        }
        
        
        
        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
 
            oldCell?.label.textColor = .secondaryLabel
            newCell?.label.textColor = .label
        }
    }
    

    
    //添加子的viewControllers
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        let followVC = storyboard!.instantiateViewController(withIdentifier: kFollowVCID)
        let discoverVC = storyboard!.instantiateViewController(withIdentifier: kDiscoverVCID)
        let nearbyVC = storyboard!.instantiateViewController(withIdentifier: kNearByVCID)
        return [followVC,discoverVC,nearbyVC]
    }
    
    
    
}
