//
//  MainWindowController.swift
//  LoginSample
//
//  Created by 杏菌 on 15/9/8.
//  Copyright (c) 2015年 XingJun. All rights reserved.
//

import Cocoa
extension NSStoryboard {
    private class func mainStoryboard()-> NSStoryboard {
        return NSStoryboard(name: "Main", bundle: NSBundle.mainBundle())!
    }
    private class func loginStoryboard()-> NSStoryboard {
        return NSStoryboard(name: "Login", bundle: NSBundle.mainBundle())!
    }
    class func loginController()->LoginController {
        return self.loginStoryboard().instantiateControllerWithIdentifier("LoginController") as! LoginController
    }
    class func mainController()->ViewController {
        return self.mainStoryboard().instantiateControllerWithIdentifier("ViewController") as! ViewController;
    }
}
class MainWindowController: NSWindowController , LoginDelegate {

    override func windowDidLoad() {
        super.windowDidLoad()
        
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
        let loginController = NSStoryboard.loginController()
        loginController.delegate = self
        self.contentViewController = loginController
        
        
        
    }
    func onLoginIn () {
        self.contentViewController = NSStoryboard.mainController()
    }
    func onLoginSuccesss() {
        self.onLoginIn()
    }

}
