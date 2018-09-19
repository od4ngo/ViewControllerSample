//
//  TableViewController.swift
//  ViewControllerSampleGitHub
//
//  Created by hideta on 2018/09/20.
//  Copyright © 2018 hideta. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var dataList = ["1", "2",  "3",  "4",  "5",  "6",  "7",  "8",  "9",  "10",  "11",  "12",  "13",  "14",  "15",  "16",  "17",  "18",  "19",  "20"]
    
    var leftBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "TableViewController"
        
        leftBarButton = UIBarButtonItem(title: "< Back", style: .plain, target: self, action: #selector(TableViewController.goBack))
        self.navigationItem.leftBarButtonItem = leftBarButton
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = dataList[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    @objc func goBack() {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
