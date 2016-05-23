//
//  ViewController.swift
//  UIActivityIndicatorView
//
//  Created by 陈昆涛 on 16/3/30.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //创建一个活动提示的控件
    //1.
//    let activity = UIActivityIndicatorView(frame: CGRectMake(320/2-10,568/2,20,20))
    //2.
    let activity:UIActivityIndicatorView = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.WhiteLarge )
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        activity.center = CGPointMake(self.view.frame.size.width/2,self.view.frame.size.height/2)
        self.view.backgroundColor = UIColor.grayColor()
        //开活动
        activity.startAnimating()
        self.view.addSubview(activity)
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //停止活动
        activity.stopAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

