//
//  LoginController.swift
//  LoginSample
//
//  Created by 杏菌 on 15/9/8.
//  Copyright (c) 2015年 XingJun. All rights reserved.
//

import Cocoa
protocol LoginDelegate {
    func onLoginSuccesss()
}
class LoginController: NSViewController {
    var delegate : LoginDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func login(sender: AnyObject) {
        print("login")
        self.delegate?.onLoginSuccesss()
    }
}
