//
//  EventSelectionViewController.swift
//  Tinderoni
//
//  Created by Jie on 9/25/15.
//  Copyright © 2015 Jie. All rights reserved.
//

import Foundation

class EventSelectionViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let title: UILabel = UILabel(frame: CGRectMake(0, 0, 50, 44))
        title.font = UIFont(name: "AvenirNext-Medium", size: 16)!
        title.text = "Go have Ice Cream"
        title.textAlignment = NSTextAlignment.Center
        title.textColor = UIColor.whiteColor()
        self.navigationItem.titleView = title
        
    }
    
}