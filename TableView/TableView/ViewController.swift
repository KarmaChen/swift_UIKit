//
//  ViewController.swift
//  TableView
//
//  Created by 陈昆涛 on 16/3/31.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var dataArray:Array<String>?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //创建tableview 风格有普通和分组两种
        let tableview = UITableView(frame: self.view.frame,style: UITableViewStyle.Grouped)
        tableview.dataSource = self
        tableview.delegate = self
        dataArray = ["1","2","3","4","5","6","7","8","9","10"]
        tableview.reloadData()
        //设置tableView的回弹效果
        tableview.bounces = false
        //设置tableView的编辑状态
        tableview.editing = true
        self.view.addSubview(tableview)
        
    }
    //设置编辑状态
    func  tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        return UITableViewCellEditingStyle.Insert
    }
    //设置编辑状态具体逻辑操作
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete
        {
            dataArray?.removeAtIndex(indexPath.row)
        }else{
            dataArray?.append("new")
        }
        tableView.reloadData()
    }
    //设置tableView的移动
    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        let str = dataArray?[sourceIndexPath.row]
        dataArray?.removeAtIndex(sourceIndexPath.row)
        dataArray?.insert(str!, atIndex: destinationIndexPath.row)
    }
    //设置分区数
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    
    }
    //返回多少个CELL
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (dataArray?.count)!
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell? = tableView.dequeueReusableCellWithIdentifier("cellid")
        if  cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "cellid")
            cell?.selectionStyle = UITableViewCellSelectionStyle.Blue
        }
        cell?.textLabel?.text = dataArray?[indexPath.row]
        return cell!
        
    }
    //设置透视图的高度
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    //设置尾视图的高度
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 44
    }
    //设置cell的高度 默认是44
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50
    }
    //设置头视图
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRectMake(0,0,320,100))
        view.backgroundColor = UIColor.redColor()
        return view
        
    }
    //设置尾视图
    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRectMake(0,0,320,100))
        view.backgroundColor = UIColor.blueColor()
        return view
    }
    //点击cell触发的方法
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("%d,%d",indexPath.section,indexPath.row)
    }
    //取消某个Cell时触发的方法
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    //将要取消某个CELL时触发的方法
    func tableView(tableView: UITableView, willDeselectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        return indexPath
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

