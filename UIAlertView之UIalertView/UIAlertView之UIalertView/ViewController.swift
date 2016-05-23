//
//  ViewController.swift
//  UIAlertView之UIalertView
//
//  Created by 陈昆涛 on 16/3/30.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //创建alertView
        let alertView = UIAlertController(title: "alter", message: "look me", preferredStyle: UIAlertControllerStyle.Alert)
        //添加一个封装的操作逻辑按钮
        let alertActionOne = UIAlertAction(title: "cancle", style: UIAlertActionStyle.Destructive) { (alter) -> Void in
            print("cancle")
                    }
        alertView.addAction(alertActionOne)
        alertView.addTextFieldWithConfigurationHandler{ (textField) -> Void in
            textField.placeholder = "hello world"
        }

        self.presentViewController(alertView, animated: true, completion: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

