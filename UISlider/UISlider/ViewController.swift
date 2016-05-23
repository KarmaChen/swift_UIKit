//
//  ViewController.swift
//  UISlider
//
//  Created by 陈昆涛 on 16/3/29.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let slider = UISlider(frame: CGRectMake(20,100,280,40))
    override func viewDidLoad() {
        super.viewDidLoad()
        //添加一个控制方法
        slider.addTarget(self, action: Selector(
            "slider:"), forControlEvents: UIControlEvents.ValueChanged)
        //设置滑块的取值范围
        slider.minimumValue = 1
        slider.maximumValue = 100
        //设置滑动轴颜色
        slider.minimumTrackTintColor = UIColor.greenColor()
        slider.maximumTrackTintColor = UIColor.grayColor()
        //设置滑块颜色
        slider.thumbTintColor = UIColor.blackColor()
        self.view.addSubview(slider)
        //是否设置滑动时持续发方法
        slider.continuous = false
        
        
    }
    func slider(slider:UISlider){
        print(slider.value)
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        slider.setValue((Float)(rand()%90)+1, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

