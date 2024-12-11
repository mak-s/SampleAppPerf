//
//  ContainerXViewController.swift
//  PerformanceTest
//
//  Created by Manish  on 11/12/24.
//

import UIKit
import WebKit

class WebViewController: BaseViewController {
    var webView: WKWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let webView = WKWebView(
            frame: CGRect(x: 0, y: 0, width: 1, height: 1),
            configuration: WKWebViewConfiguration()
        )
        self.view.attach(subView: webView)
        self.webView = webView
        
        let url = URL(string: "http://www.google.com")!
        webView.load(URLRequest(url: url))
        
    }
}
