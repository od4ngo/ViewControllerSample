//
//  NextNavigationController.swift
//  ViewControllerSampleGitHub
//
//  Created by hideta on 2018/09/20.
//  Copyright © 2018 hideta. All rights reserved.
//

import UIKit

class NextNavigationController: UIViewController {
    
    var leftBarButton: UIBarButtonItem!
    var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "NextNaviController"
        
        leftBarButton = UIBarButtonItem(title: "< Back", style: .plain, target: self, action: #selector(NextNavigationController.goBack))
        self.navigationItem.leftBarButtonItem = leftBarButton
        
        view.backgroundColor = UIColor.brown
        
        label = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        label.text = "This is the Next Page"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.center
        label.sizeToFit()
        label.center = view.center
        view.addSubview(label)
        
    }
    
    @objc func goBack() {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
