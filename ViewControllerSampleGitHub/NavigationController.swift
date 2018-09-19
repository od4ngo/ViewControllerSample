//
//  NavigationController.swift
//  ViewControllerSampleGitHub
//
//  Created by hideta on 2018/09/20.
//  Copyright © 2018 hideta. All rights reserved.
//

import UIKit

class NavigationController: UIViewController {
    
    var leftBarButton: UIBarButtonItem!
    var button1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "NaviController"
        
        leftBarButton = UIBarButtonItem(title: "< Back", style: .plain, target: self, action: #selector(NavigationController.goBack))
        self.navigationItem.leftBarButtonItem = leftBarButton
        
        view.backgroundColor = UIColor.yellow
        
        button1 = UIButton(frame: CGRect(x: 0, y: 0, width: 120, height: 40))
        button1.center = view.center
        button1.setTitle("Go to Next", for: .normal)
        button1.setTitleColor(UIColor.black, for: .normal)
        button1.backgroundColor = .white
        button1.addTarget(self, action: #selector(self.goToNext), for: .touchUpInside)
        view.addSubview(button1)
    }
    
    @objc func goToNext() {
        let nextNavigationController = NextNavigationController()
        self.navigationController?.pushViewController(nextNavigationController, animated: true)
    }
    
    @objc func goBack() {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
