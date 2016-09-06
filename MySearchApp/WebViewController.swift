//
//  WebViewController.swift
//  MySearchApp
//
//  Created by hiro on 2016/09/06.
//  Copyright © 2016年 hiro. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    var itemUrl :String?
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let itemUrl = itemUrl {
            if let url = NSURL(string: itemUrl) {
                let request = NSURLRequest(URL: url)
                webView.loadRequest(request)
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}