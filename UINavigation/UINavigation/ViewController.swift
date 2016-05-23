//
//  ViewController.swift
//  UINavigation
//
//  Created by Karma on 16/4/7.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.purpleColor()
        self.title = "导航"
        // Do any additional setup after loading the view, typically from a nib.
        let lable = UILabel(frame: CGRectMake(100,100,100,30))
        lable.text  = "hello navigation"
        self.view.addSubview(lable)
        let button  = UIButton(frame: CGRectMake(100,200,100,30))
        button.backgroundColor = UIColor.blueColor()
        button.setTitle("切换", forState: UIControlState.Normal)
        button.addTarget(self, action: Selector("changeController"), forControlEvents: .TouchUpInside)
        //导航上item的颜色
        self.navigationController?.navigationBar.tintColor = UIColor.blueColor()
        self.view.addSubview(button)
        //导航栏颜色
        self.navigationController?.navigationBar.barTintColor = UIColor.yellowColor()
        //自定义导航栏健
        let barButtonItem = UIBarButtonItem(title: "返回", style: .Plain, target: self, action: "back")
//        self.navigationItem.backBarButtonItem = barButtonItem
        self.navigationItem.leftBarButtonItem = barButtonItem
        let barR1 = UIBarButtonItem(barButtonSystemItem: .Bookmarks, target: self, action: "action1")
        let barR2 = UIBarButtonItem(barButtonSystemItem: .Bookmarks, target: self, action: "action2")
//        self.navigationItem.rightBarButtonItems = [barR1,barR2]
        self.navigationController?.toolbarHidden = false
        self.toolbarItems  = [barR1,barR2]
        
        }
    
    func changeController(){
        let viewController = ViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    func back(){
        print("back")
        self.navigationController?.popViewControllerAnimated(true)
    }
    func action1(){
        print("action1")
    }
    func action2(){
        print("action2")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

