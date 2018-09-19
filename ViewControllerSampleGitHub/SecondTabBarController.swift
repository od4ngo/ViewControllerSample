//
//  SecondTabBarController.swift
//  ViewControllerSampleGitHub
//
//  Created by hideta on 2018/09/20.
//  Copyright © 2018 hideta. All rights reserved.
//

import UIKit

class SecondTabBarController: UIViewController {
    
    var label: UILabel!
    var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.cyan
        
        label = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        label.text = "This is the Second Page"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.center
        label.sizeToFit()
        label.center.x = view.center.x
        label.center.y = view.center.y - 100
        view.addSubview(label)
        
        backButton = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        backButton.center.x = view.center.x
        backButton.frame.origin.y = view.center.y + 60
        backButton.setTitle("Back to Top", for: .normal)
        backButton.setTitleColor(UIColor.black, for: .normal)
        backButton.backgroundColor = .white
        backButton.addTarget(self, action: #selector(self.goBack), for: .touchUpInside)
        view.addSubview(backButton)
    }
    
    @objc func goBack() {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
