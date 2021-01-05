//
//  DetailViewController.swift
//  NewsReader
//
//  Created by 高橋 京介 on 2016/10/23.
//  Copyright © 2016年 Kyosuke Takahashi. All rights reserved.
//

import UIKit

class DetailViewController : UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    var link:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: self.link) {
            let request = URLRequest(url: url)
            self.webView.loadRequest(request)
        }
    }
}
