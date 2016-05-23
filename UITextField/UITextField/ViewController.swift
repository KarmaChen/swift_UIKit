//
//  ViewController.swift
//  UITextField
//
//  Created by 陈昆涛 on 16/3/29.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    let textField = UITextField(frame: CGRectMake(20,100,280,40))

    override func viewDidLoad() {
        super.viewDidLoad()
//        textField.backgroundColor = UIColor.redColor()
        //设置输入风格line和bezel
        textField.borderStyle = UITextBorderStyle.Line
        textField.borderStyle = UITextBorderStyle.Bezel
        //s设置提示文字
        textField.placeholder = "请输入文字"
        //输入文字的颜色
        textField.textColor = UIColor.redColor()
        //设置字体大小
        textField.font = UIFont.italicSystemFontOfSize(20)
        //设置文字对齐模式
        textField.textAlignment = .Center
        //是否每次进入编辑框都清除
        textField.clearsOnBeginEditing = true
        //是否字体自适应
        textField.adjustsFontSizeToFitWidth = true
        //设置输入框无效
//        textField.enabled = false
        //设置输入框视图
        let viewLeft = UIView(frame: CGRectMake(0,0,40,40))
        let viewRight = UIView(frame: CGRectMake(0,0,40,40))
        viewLeft.backgroundColor = UIColor.blackColor()
        viewRight.backgroundColor = UIColor.grayColor()
        textField.leftView = viewLeft
        textField.rightView = viewRight
        //设置左右视图显示
        textField.leftViewMode = UITextFieldViewMode.Always
//        textField.rightViewMode = UITextFieldViewMode.Always
        //设置弹出交互键盘
        let board = UIView(frame: CGRectMake(0,0,320,50))
        board.backgroundColor = UIColor.grayColor()
        //自定义Board
//        textField.inputView = board
        //设置副键盘视图
        textField.inputAccessoryView = board
        textField.delegate = self
        //设置文本删除按钮显示
        textField.clearButtonMode = UITextFieldViewMode.Always
        self.view.addSubview(textField)
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        textField.resignFirstResponder()
    }
    //开始编辑时调用的方法
    func textFieldDidBeginEditing(textField: UITextField) {
        print("didBegin")
    }
    //结束编辑时调用的方法
    func textFieldDidEndEditing(textField: UITextField) {
        print("didEnd")
    }
    //将要开始编辑时调用的方法
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        print("shouldBegin")
        return true
    }
    func textFieldShouldClear(textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    //将要结束编辑时调用的方法
    func  textFieldShouldEndEditing(textField: UITextField) -> Bool {
        print("shouldBegin")
        return true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

