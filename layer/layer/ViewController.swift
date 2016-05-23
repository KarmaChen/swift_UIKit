//
//  ViewController.swift
//  layer
//
//  Created by 陈昆涛 on 16/3/24.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let image = UIImageView(frame: CGRectMake(100, 100, 100, 100))
        image.backgroundColor = UIColor.blueColor()
        self.view.addSubview(image)
//        //设置圆角
//        image.layer.masksToBounds = true
//        //半径
//        image.layer.cornerRadius = 50
        //设置边框
        image.layer.borderWidth = 2
        image.layer.borderColor = UIColor.blackColor().CGColor
        //设置阴影
        image.layer.shadowColor = UIColor.purpleColor().CGColor
        image.layer.shadowOffset = CGSizeMake(10,10)
        image.layer.shadowOpacity = 1
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

