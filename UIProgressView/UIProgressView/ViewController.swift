//
//  ViewController.swift
//  UIProgressView
//
//  Created by 陈昆涛 on 16/3/30.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let progress = UIProgressView(progressViewStyle: UIProgressViewStyle.Default)
        progress.frame = CGRectMake(20, 100, 280, 20)
        self.view.addSubview(progress)
        //进度条为0-1之间 设置其默认值
        progress.progress = 0.5
        //设置进度条的颜色
        progress.progressTintColor = UIColor.blackColor()
        //设置未走过的颜色
        progress.trackTintColor = UIColor.greenColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

