//
//  ViewController2.swift
//  UIViewController
//
//  Created by Karma on 16/4/6.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    var tmp : Int = 0
    //加载视图
    override func loadView() {
        super.loadView()
        tmp++
        print(tmp,"loadView")
    }
    //加载我们的控件和逻辑方法的初始化
    override func viewDidLoad() {
        super.viewDidLoad()
        tmp++
        print(tmp,"viewDidLoad")


        // Do any additional setup after loading the view.
    }
    //视图将要展示时调用的方法
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        tmp++
        print(tmp,"viewWillAppear")

        }
    //将要布局子视图
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        tmp++
        print(tmp,"viewWillLayoutSubviews")

    }
    //已经布局了子视图完成
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tmp++
        print(tmp,"viewDidLayoutSubviews")

        
    }
    //视图已经展示
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        tmp++
        print(tmp,"viewDidAppear")
        
    }
    //视图将要消失
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        tmp++
        print(tmp,"viewWillDisappear")

        
    }
    //视图消失
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        tmp++
        print(tmp,"viewDidDisappear")
        
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
