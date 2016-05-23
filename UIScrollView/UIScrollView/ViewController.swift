//
//  ViewController.swift
//  UIScrollView
//
//  Created by 陈昆涛 on 16/3/31.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let scrollView = UIScrollView(frame: self.view.frame)
        let view = UIView(frame: CGRectMake(100,100,100,100))
        //设置scrollView的内容尺寸
        scrollView.contentSize = CGSizeMake(self.view.frame.width*2, self.view.frame.height*2)
        view.backgroundColor = UIColor.redColor()
        self.view.addSubview(scrollView)
        scrollView.addSubview(view)
        //设置回弹的效果
        scrollView.bounces = false
        //指示条位置设置
        scrollView.scrollIndicatorInsets = UIEdgeInsetsMake(10, 10, 10, 10)
        //设置指示条是否显示
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        //设置翻页效果
        scrollView.pagingEnabled = true
        
        //设置拉伸和缩放的比值
        scrollView.maximumZoomScale = 10
        scrollView.minimumZoomScale = 1
        //设置代理
        scrollView.delegate = self
    }
    //返回进行缩放的视图
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return scrollView.subviews.first
    }
    //减速结束时触发的代理的方法
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        
    }
    //停止拖拽时触发的代理的方法
    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        
    }
    //停止动画时时触发的代理的方法
    func scrollViewDidEndScrollingAnimation(scrollView: UIScrollView) {
        
    }
    //停止缩放时触发的代理的方法
    func  scrollViewDidEndZooming(scrollView: UIScrollView, withView view: UIView?, atScale scale: CGFloat) {
        
    }
    //进行缩放时触发的代理的方法
    func scrollViewDidZoom(scrollView: UIScrollView) {
        
    }
    //将要滑动到顶部时触发的代理的方法,false是取消回到顶端的操作
    func scrollViewShouldScrollToTop(scrollView: UIScrollView) -> Bool {
        return false
    }
    //将要减速时触发的代理的方法
    func scrollViewWillBeginDecelerating(scrollView: UIScrollView) {
        
    }
    //开始拖拽时触发的代理的方法
    func scrollViewWillBeginDragging(scrollView: UIScrollView, withView view: UIView?) {
        
    }
    //将要开始缩放时触发的方法
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        
    }
    //停止拖拽时触发的方法
    func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

