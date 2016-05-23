//
//  ViewController.swift
//  UITextView
//
//  Created by Karma on 16/4/5.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let textView = UITextView(frame: CGRectMake(20, 100, 280, 100))
        //设置字体
        textView.font = UIFont.systemFontOfSize(25)
        textView.backgroundColor = UIColor.grayColor()
        textView.textColor = UIColor.greenColor()
        textView.textAlignment = .Center
        //设置是否编辑
        textView.editable = false
        //设置默认内容
        textView.text = "hello world \n www.baidu.com"
        //设置连接类型
        textView.dataDetectorTypes = .Link
        textView.delegate = self
        
        self.view.addSubview(textView)
    }
    //输入字符调用方法
    func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        return true
    }
    //开始编辑时调用方法
    func textViewDidBeginEditing(textView: UITextView) {
        
    }
    //输入改变时调用的方法
    func textViewDidChange(textView: UITextView) {
        
    }
    //改变选中文字时调用方法
    func textViewDidChangeSelection(textView: UITextView) {
        
    }
    //结束编辑时时调用方法
    func textViewDidEndEditing(textView: UITextView) {
        
    }
    //将要开始编辑时时调用方法
    func textViewShouldBeginEditing(textView: UITextView) -> Bool {
        return true
        
    }
    func textViewShouldEndEditing(textView: UITextView) -> Bool {
        return true 
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

