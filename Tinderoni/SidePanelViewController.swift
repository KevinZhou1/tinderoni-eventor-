
//
//  SidePanelViewController.swift
//  Tinderoni
//
//  Created by Jie on 9/26/15.
//  Copyright © 2015 Jie. All rights reserved.
//

import Foundation

class SidePanelViewController: UIViewController {
        
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    
    @IBAction func logOut(sender: AnyObject) {
        globalLayerClient.deauthenticateWithCompletion { (success: Bool, error: NSError?) in
            if error == nil {
                PFUser.logOut()
                self.navigationController!.popToRootViewControllerAnimated(true)
            } else {
                print("Failed to deauthenticate: \(error)")
            }
        }
    }

}