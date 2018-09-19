//
//  ViewController.swift
//  ViewControllerSampleGitHub
//
//  Created by hideta on 2018/09/19.
//  Copyright © 2018 hideta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var label: UILabel!
    var button1: UIButton!
    var button2: UIButton!
    var button3: UIButton!
    var button4: UIButton!
    var button5: UIButton!
    
    let btnWidth = 320
    let btnHeight = 50
    
    let dataList = ["ViewController", "TableViewController", "CollectionViewController", "NavigationController", "TabBarController", "AlertController"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label = UILabel(frame: CGRect())
        label.text = ": UI" + dataList[0]
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.center
        label.sizeToFit()
        label.center.x = view.center.x
        label.frame.origin.y = 80
        view.addSubview(label)
        
        button1 = UIButton(frame: CGRect(x: 0, y: 0, width: btnWidth, height: btnHeight))
        button1.center.x = view.center.x
        button1.frame.origin.y = 150
        button1.setTitle(": UI" + dataList[1], for: .normal)
        button1.backgroundColor = .blue
        button1.addTarget(self, action: #selector(ViewController.goToTable), for: .touchUpInside)
        view.addSubview(button1)
        
        button2 = UIButton(frame: CGRect(x: 0, y: 0, width: btnWidth, height: btnHeight))
        button2.center.x = view.center.x
        button2.frame.origin.y = 220
        button2.setTitle(": UI" + dataList[2], for: .normal)
        button2.setTitleColor(UIColor.black, for: .normal)
        button2.backgroundColor = .green
        button2.addTarget(self, action: #selector(self.goToCollection), for: .touchUpInside)
        view.addSubview(button2)
        
        button3 = UIButton(frame: CGRect(x: 0, y: 0, width: btnWidth, height: btnHeight))
        button3.center.x = view.center.x
        button3.frame.origin.y = 290
        button3.setTitle(": UI" + dataList[3], for: .normal)
        button3.setTitleColor(UIColor.black, for: .normal)
        button3.backgroundColor = .yellow
        button3.addTarget(self, action: #selector(self.goToNavigation), for: .touchUpInside)
        view.addSubview(button3)
        
        button4 = UIButton(frame: CGRect(x: 0, y: 0, width: btnWidth, height: btnHeight))
        button4.center.x = view.center.x
        button4.frame.origin.y = 360
        button4.setTitle(": UI" + dataList[4], for: .normal)
        button4.backgroundColor = UIColor.orange
        button4.addTarget(self, action: #selector(self.goToTabBar), for: .touchUpInside)
        view.addSubview(button4)
        
        button5 = UIButton(frame: CGRect(x: 0, y: 0, width: btnWidth, height: btnHeight))
        button5.center.x = view.center.x
        button5.frame.origin.y = 430
        button5.setTitle(": UI" + dataList[5], for: .normal)
        button5.backgroundColor = UIColor.red
        button5.addTarget(self, action: #selector(self.goToAlert), for: .touchUpInside)
        view.addSubview(button5)
        
    }
    
    @objc func goToTable() {
        
        let tableViewController = TableViewController()
        let table = UINavigationController(rootViewController: tableViewController)
        
        self.present(table, animated: true, completion: nil)
    }
    
    @objc func goToCollection() {
        
        // UICollectionView must be initialized with a non-nil layout parameter
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 30, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 110, height: 100)
        
        let collectionViewController = CollectionViewController(collectionViewLayout: layout)
        let collection = UINavigationController(rootViewController: collectionViewController)
        
        self.present(collection, animated: true, completion: nil)
    }
    
    @objc func goToNavigation() {
        
        let navigationController = NavigationController()
        let navi = UINavigationController(rootViewController: navigationController)
        
        self.present(navi, animated: true, completion: nil)
    }
    
    @objc func goToTabBar() {
        
        let tabBarController = TabBarController()
        
        self.present(tabBarController, animated: true, completion: nil)
    }
    
    @objc func goToAlert() {
        
        let title = "Here is Alert Title"
        let message = "Here is Alert Message"
        let optionText = "OK"
        
        self.displayAlert(title, message, optionText)
    }
    
    @objc func displayAlert(_ title: String, _ message: String = "", _ optionText: String = "OK") {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        let optionButton = UIAlertAction(title: optionText, style: UIAlertActionStyle.cancel, handler: nil)
        alert.addAction(optionButton)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
