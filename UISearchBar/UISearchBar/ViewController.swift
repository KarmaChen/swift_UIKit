//
//  ViewController.swift
//  UISearchBar
//
//  Created by 陈昆涛 on 16/3/24.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UISearchBarDelegate {
    let searchBar = UISearchBar(frame: CGRectMake(20,100,280,200))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //设置提示语
        searchBar.placeholder = "请输入关键字"
        //设置默认文本
//        searchBar.text = "默认"
        //设置背景文字
        searchBar.prompt = "   "
        //设置搜索框风格
        searchBar.barStyle = UIBarStyle.Default
        //设置相应功能按钮
        searchBar.showsBookmarkButton = true
//        searchBar.showsCancelButton = true
        //设置渲染颜色
        searchBar.tintColor = UIColor.redColor()
        //s设置搜索框的颜色
        searchBar.barTintColor = UIColor.blueColor()
        //设置搜索框附加视图
        searchBar.scopeButtonTitles = ["1","2","3","4"]
        //设置展示附件视图
        searchBar.showsScopeBar = true
        self.view.addSubview(searchBar)
        //设置代理
        searchBar.delegate = self
        }
    //点击空白处键盘收回
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        searchBar.resignFirstResponder()
    }
    /*
    代理回调方法
*/
    
    //点击附件 代理的回调
    func searchBar(searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        print(selectedScope)
    }
    
    //当输入框文字变化时调用的方法 输出整个字符串
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
    }
    //点击图书按钮触发的方法
    func searchBarBookmarkButtonClicked(searchBar: UISearchBar) {
        print("点击了图书")
    }
    //点击取消触发的方法
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        
    }
    //点击搜索结果会触发这样一个方法
    func searchBarResultsListButtonClicked(searchBar: UISearchBar) {
        
    }
    //进入编辑状态的触发的方法
    func searchBarShouldBeginEditing(searchBar: UISearchBar) -> Bool {
        return true
    }
    //进入编辑状态触发调用的方法
    func searchBarTextDidBeginEditing(searchBar: UISearchBar) {
        
    }
    //结束时编辑时调用的方法
    func searchBarTextDidEndEditing(searchBar: UISearchBar) {
        
    }
    
    //结束时触发的方法
    func searchBarShouldEndEditing(searchBar: UISearchBar) -> Bool {
        return true
    }
    //检测用户输入字符 单个检验
    func searchBar(searchBar: UISearchBar, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        print(text)
        return true
    }
    //点击搜索时会触发的一个方法
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        print("search")
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

