//
//  ViewController.swift
//  UISegmentedControl.xib
//
//  Created by 陈昆涛 on 16/3/28.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let viewBlue:UIView = UIView(frame: CGRectMake(0,0,320,568))
     let viewRed:UIView = UIView(frame: CGRectMake(0,0,320,568))
    override func viewDidLoad() {
        super.viewDidLoad()
        let seg = UISegmentedControl(items: ["blue","red"])
        seg.addTarget(self, action: Selector("change:"), forControlEvents: UIControlEvents.ValueChanged)
        self.navigationItem.titleView = seg
        viewBlue.backgroundColor = UIColor.blueColor()
        viewRed.backgroundColor = UIColor.redColor()
        
        self.view.addSubview(viewBlue)
        self.view.addSubview(viewRed)
        
        self.view.bringSubviewToFront(viewBlue)
        seg.selectedSegmentIndex = 0
    }
    func change(seg:UISegmentedControl){
        if seg.selectedSegmentIndex == 0{
            self.view.bringSubviewToFront(viewBlue)
        
    }else{
            self.view.bringSubviewToFront(viewRed)
    }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

