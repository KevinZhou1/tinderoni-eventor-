//
//  CreateMyOwnEventViewController.swift
//  Tinderoni
//
//  Created by Jie on 9/19/15.
//  Copyright (c) 2015 Jie. All rights reserved.
//

import Foundation

class CreateMyOwnEventViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        let proxyViewForStatusBar : UIView = UIView(frame: CGRectMake(0, 0,self.view.frame.size.width, 20))
        proxyViewForStatusBar.backgroundColor = UIColor(red: 0.114, green: 0.522, blue: 0.282, alpha: 1.0)
        self.view.addSubview(proxyViewForStatusBar)
        */
        
    }
    
    @IBAction func cancel(sender: AnyObject) {
        self.navigationController?.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    @IBAction func postAnEvent(sender: AnyObject) {
        self.navigationController?.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
}