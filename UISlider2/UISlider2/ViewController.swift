//
//  ViewController.swift
//  UISlider2
//
//  Created by 陈昆涛 on 16/3/29.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let imageView = UIImageView(frame: CGRectMake(0, 0, 400, 550))
    override func viewDidLoad() {
        super.viewDidLoad()
        let  slider = UISlider(frame: CGRectMake(20,self.view.frame.size.height-60,280,20))
        imageView.image = UIImage(named: "屏幕快照 2016-03-29 23.46.37.png")
        self.view.addSubview(slider)
        self.view.addSubview(imageView)
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.addTarget(self, action: Selector("slider:"), forControlEvents: UIControlEvents.ValueChanged)
        // Do any additional setup after loading the view, typically from a nib.
    }
    func slider(slider:UISlider){
        let value:Float = 1-slider.value/100
        imageView.bounds = CGRectMake(0, 0, 400*(CGFloat)(value), 550*(CGFloat)(value))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

