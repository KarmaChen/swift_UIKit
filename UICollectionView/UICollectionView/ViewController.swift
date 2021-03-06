//
//  ViewController.swift
//  UICollectionView
//
//  Created by Karma on 16/4/6.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let layout = UICollectionViewFlowLayout()
        //设置布局方向
        layout.scrollDirection = UICollectionViewScrollDirection.Vertical
        //设置每个元素的大小
        layout.itemSize = CGSizeMake(80, 80)
        //设置元素间距
        layout.minimumInteritemSpacing = 30
        //设置行间距
        layout.minimumLineSpacing = 30
        let collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        //注册一类cell
        collectionView.registerClass(NSClassFromString("UICollectionViewCell"), forCellWithReuseIdentifier: "cellid")
        
        self.view.addSubview(collectionView)
    }
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cellid", forIndexPath: indexPath)
        cell.backgroundColor = UIColor.purpleColor()
        return cell
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let tmp = indexPath.row%3
        if tmp == 0{
            return CGSizeMake(50, 50)
        }else if tmp == 1{
            return CGSizeMake(100, 100)
            
        }else{
            return CGSizeMake(50, 50)
            
        }
    }


}

