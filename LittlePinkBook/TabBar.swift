//
//  TabBar.swift
//  LittlePinkBook
//
//  Created by Evan Yang on 2022/5/3.
//

import UIKit

class TabBar: UITabBar {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        if #available(iOS 15, *){
            let tabBarAppearance = UITabBarAppearance(coder: coder)
            tabBarAppearance.configureWithOpaqueBackground()
            tabBarAppearance.backgroundColor = UIColor.white
            self.standardAppearance = tabBarAppearance
            self.scrollEdgeAppearance = tabBarAppearance
        }
    }
}
