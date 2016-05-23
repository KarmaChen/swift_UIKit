//
//  ViewController.swift
//  UiSwitch
//
//  Created by 陈昆涛 on 16/3/27.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let mySwitch = UISwitch(frame: CGRectMake(100,100,100,100))
        //添加触发事件
        mySwitch.addTarget(self, action: Selector("switchClick:"), forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(mySwitch)
        
        /*
            自定义UI
        */
        //添加滑块颜色
        mySwitch.thumbTintColor = UIColor.redColor()
        //设置开关开启颜色
        mySwitch.onTintColor = UIColor.blueColor()
        //设置开关的颜色
        mySwitch.tintColor = UIColor.purpleColor()
    }
    func switchClick(swi:UISwitch){
        if swi.on{
            self.view.backgroundColor = UIColor.purpleColor()
        }else{
            self.view.backgroundColor = UIColor.whiteColor()
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

