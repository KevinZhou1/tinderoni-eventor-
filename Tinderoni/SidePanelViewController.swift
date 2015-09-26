//
//  SidePanelViewController.swift
//  Tinderoni
//
//  Created by Jie on 9/26/15.
//  Copyright © 2015 Jie. All rights reserved.
//

import Foundation

class SidePanelViewController: UIViewController {
    
    @IBOutlet weak var messageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func goMessage(sender: AnyObject) {
        self.performSegueWithIdentifier("showMessages", sender: nil)
    }

}