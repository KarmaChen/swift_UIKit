//
//  ViewController.swift
//  UIButton
//
//  Created by 陈昆涛 on 16/3/23.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*
        case Custom 自定义
        @available(iOS 7.0, *)
        case System // standard system button
        
        case DetailDisclosure,case InfoLight,case InfoDark 详情
        case ContactAdd  添加
*/
        let button:UIButton = UIButton(type: UIButtonType.Custom)
        button.frame = CGRectMake(100, 100, 100, 100)
        button.backgroundColor = UIColor.blueColor()
        self.view.addSubview(button)
        //添加点击事件
        /*
        TouchDragInside:
        TouchDragOutside: UIControlEvents
        TouchDragEnter: UIControlEvents
         TouchDragExit: UIControlEvents
        TouchUpInside: UIControlEvents
         TouchUpOutside: UIControlEvents 
        TouchCancel:
        */

        button.addTarget(self, action: Selector("click:"), forControlEvents: UIControlEvents.TouchUpInside)
        //设置按钮标题
        button.setTitle("按钮", forState: .Normal)
        //设置按钮背景图片
//        button.setBackgroundImage(<#T##image: UIImage?##UIImage?#>, forState: <#T##UIControlState#>)
        //设置按钮图片
//        button.setImage(<#T##image: UIImage?##UIImage?#>, forState: <#T##UIControlState#>)
        //设置内容便宜量
//        button.contentEdgeInsets = UIEdgeInsetsMake(<#T##top: CGFloat##CGFloat#>, <#T##left: CGFloat##CGFloat#>, <#T##bottom: CGFloat##CGFloat#>, <#T##right: CGFloat##CGFloat#>)
        //设置按钮点击效果
        button.showsTouchWhenHighlighted = true
        //设置高亮状态按钮标题
        button.setTitle("新标题", forState: UIControlState.Highlighted)
        
    }
    func click(btn:UIButton){
        print("test")
        btn.backgroundColor = UIColor(red: CGFloat(random()%255)/255, green: CGFloat(random()%255)/255, blue: CGFloat(random()%255)/255, alpha: 1)
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

