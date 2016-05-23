//
//  ViewController.swift
//  UiPageControl
//
//  Created by 陈昆涛 on 16/3/30.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let pagecontrol = UIPageControl(frame: CGRectMake(100,100,100,30))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
        //设置页数
        pagecontrol.numberOfPages = 6
        //设置当前页码
        pagecontrol.currentPage = 3
        //设置只有一页时自动隐藏
        pagecontrol.hidesForSinglePage = true
        //设置单页颜色
        pagecontrol.pageIndicatorTintColor = UIColor.blackColor()
        //设置分页点颜色
        pagecontrol.pageIndicatorTintColor = UIColor.purpleColor()
        self.view.addSubview(pagecontrol)
        pagecontrol.addTarget(self, action: Selector("change:"), forControlEvents: UIControlEvents.ValueChanged)
        
        
    }
    func change (pagecontrol:UIPageControl){
        print(pagecontrol.currentPage)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

