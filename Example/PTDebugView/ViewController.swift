//
//  ViewController.swift
//  PTDebugView
//
//  Created by gaoguangxiao125@sina.com on 06/04/2024.
//  Copyright (c) 2024 gaoguangxiao125@sina.com. All rights reserved.
//

import UIKit
import PTDebugView

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        debugTest()
//        debugView.addButton(title: "业务", right: 10, top: 160,action: #selector(kuozhan))
    }
    
    @objc func kuozhan()  {
        ZKLog("扩展业务log")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

