//
//  ViewController.swift
//  UIStepper
//
//  Created by 陈昆涛 on 16/3/30.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let lable = UILabel(frame: CGRectMake(100,300,100,100))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let stepper = UIStepper(frame: CGRectMake(100,100,100,40))
        stepper.addTarget(self, action: Selector("change:"), forControlEvents: UIControlEvents.ValueChanged)
        lable.text = String(format: "%f", stepper.value)
        //设置最大值
        stepper.maximumValue = 10
        //设置最小值
        stepper.minimumValue = 1
        //是否连续触发响应函数
        stepper.continuous = false
        //是否持续改变
        stepper.autorepeat = false
        //是否循环触发
        stepper.wraps = true
        //设置控件的颜色
        stepper.tintColor = UIColor.greenColor()
        self.view.addSubview(stepper)
        self.view.addSubview(lable)
        
    }
    func change (stepper:UIStepper){
        lable.text = String(format: "%f", stepper.value)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

