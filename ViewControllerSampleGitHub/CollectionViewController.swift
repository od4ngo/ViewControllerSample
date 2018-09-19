//
//  CollectionViewController.swift
//  ViewControllerSampleGitHub
//
//  Created by hideta on 2018/09/20.
//  Copyright © 2018 hideta. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    var leftBarButton: UIBarButtonItem!
    
    var dataList = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "CollectionViewController"
        
        leftBarButton = UIBarButtonItem(title: "< Back", style: .plain, target: self, action: #selector(CollectionViewController.goBack))
        self.navigationItem.leftBarButtonItem = leftBarButton
        
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        collectionView?.backgroundColor = UIColor.white
        
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataList.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = UIColor.green
        
        let label = UILabel()
        label.text = dataList[indexPath.row]
        label.sizeToFit()
        label.center = cell.contentView.center
        cell.contentView.addSubview(label)
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    @objc func goBack() {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
