//
//  ViewController.swift
//  LoginSample
//
//  Created by 杏菌 on 15/9/8.
//  Copyright (c) 2015年 XingJun. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    @IBAction func butotn(sender: AnyObject) {
        print("I am ViewControllers Button!")
    }


}

