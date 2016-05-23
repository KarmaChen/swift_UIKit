//
//  ViewController.swift
//  UIAltertView之UIAlertAction
//
//  Created by 陈昆涛 on 16/3/31.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //创建
        let alertView = UIAlertController(title: "alter", message: "look at", preferredStyle: UIAlertControllerStyle.Alert)
        //添加封装的了逻辑操作按钮
        let  alertActionOne = UIAlertAction(title: "cancle", style: UIAlertActionStyle.Destructive) { (alter) -> Void in
            print("cancle")
        }
        alertView.addTextFieldWithConfigurationHandler { (textField) -> Void in
            textField.placeholder  = "hello world"
        }
        
        alertView.addAction(alertActionOne)
        self.presentViewController(alertView ,animated : true,completion:nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

