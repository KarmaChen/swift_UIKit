//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by 陈昆涛 on 16/3/28.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let seg:UISegmentedControl = UISegmentedControl(frame: CGRectMake(20,100,350,40))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(seg)
        //设置分段控制器按钮
        seg.insertSegmentWithTitle("the first button", atIndex: 0, animated: true)
        seg.insertSegmentWithTitle("the second button", atIndex: 1, animated: true)
        //添加点击事件
        seg.addTarget(self, action: Selector("clickSeg:"), forControlEvents: UIControlEvents.ValueChanged)
        //设置分段器是否保存选中状态
//        seg.momentary = true
        //设置宽度自适应
        seg.apportionsSegmentWidthsByContent = true
        //手动设置某个item的宽度
        seg.setWidth(60, forSegmentAtIndex: 0)
        //设置内容偏移量
        seg.setContentOffset(CGSizeMake(10, 10), forSegmentAtIndex: 1)
        //设置默认选中的item
        seg.selectedSegmentIndex = 0
        //设置渲染颜色
        seg.tintColor = UIColor.redColor()
    }
    func clickSeg(seg:UISegmentedControl){
        print(seg.selectedSegmentIndex,"按钮被点击")
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        seg.insertSegmentWithTitle("the third button", atIndex: 2 , animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

