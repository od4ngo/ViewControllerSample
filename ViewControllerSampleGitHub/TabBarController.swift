//
//  TabBarController.swift
//  ViewControllerSampleGitHub
//
//  Created by hideta on 2018/09/20.
//  Copyright © 2018 hideta. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstViewController = FirstTabBarController()
        firstViewController.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.favorites, tag: 0)
        
        let secondViewController = SecondTabBarController()
        secondViewController.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.bookmarks, tag: 1)
        
        let tabBarList = [firstViewController, secondViewController]
        
        self.viewControllers = tabBarList
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
