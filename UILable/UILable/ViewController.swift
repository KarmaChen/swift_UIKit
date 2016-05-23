//
//  ViewController.swift
//  UILable
//
//  Created by 陈昆涛 on 16/3/23.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //坐标位置:左右 上下 宽度 长度
        let label:UILabel = UILabel(frame: CGRectMake(50,100,200,50))
        label.text = "I am a lable++++++++++++";
        //设置字体name:字体种类 size 字体的大小
        //label.font = UIFont(name: <#T##String#>, size: <#T##CGFloat#>)
        //加粗字体
         label.font = UIFont.boldSystemFontOfSize(18)
        //字体的颜色
       //label.textColor = UIColor(red: <#T##CGFloat#>, green: <#T##CGFloat#>, blue: <#T##CGFloat#>, alpha: <#T##CGFloat#>)
        label.textColor = UIColor.redColor()
        //设置背景色
        label.backgroundColor = UIColor.blueColor()
        //设置文字的对齐方式
        label.textAlignment = .Center
        //设置label的阴影
        label.shadowColor = UIColor.whiteColor()
        //设置阴影的偏移范围
        label.shadowOffset = CGSizeMake(5, 5)
        //设置label的行数 0为无线行
        label.numberOfLines = 2
        label.textInputContextIdentifier
        //添加到视图上
        self.view.addSubview(label)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

