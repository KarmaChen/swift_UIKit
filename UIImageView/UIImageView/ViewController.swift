//
//  ViewController.swift
//  UIImageView
//
//  Created by 陈昆涛 on 16/3/23.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let ImageView:UIImageView = UIImageView(frame: CGRectMake(100, 100, 200, 200))
        //设置一张图片
        ImageView.image = UIImage(named: "1.jpg")
//        ImageView.backgroundColor = UIColor.blueColor()
//        //设置imageView的高亮图片
//        ImageView.highlightedImage = UIImage(named: "")
//        //设置为高亮状体
//        ImageView.highlightedImage = true
        self.view.addSubview(ImageView)
        var array:Array<UIImage!> = Array()
        for var i=1 ; i < 6 ; i++ {
            let image:UIImage? = UIImage(named: String(format: "%d.jpg", i))
            array.append(image!)
        }
            ImageView.animationImages = array as? [UIImage]
            ImageView.animationRepeatCount = 0
            ImageView.animationDuration = 4
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

