//
//  ViewController.swift
//  UIWebView
//
//  Created by Karma on 16/4/5.
//  Copyright © 2016年 陈昆涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let webView = UIWebView(frame: CGRectMake(0,0,320,480))
        webView.loadRequest(NSURLRequest(URL: NSURL(string: "http://www.ck1388.com")!))
        self.view.addSubview(webView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

