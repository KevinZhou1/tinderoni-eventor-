//
//  PreferencesViewController.swift
//  Tinderoni
//
//  Created by Kevin Zhou on 9/25/15.
//  Copyright © 2015 Jie. All rights reserved.
//

import UIKit

class PreferencesViewController: UIViewController {
    
    //MARK: Outlets
    
    
    @IBOutlet weak var sexButton: UIButton!
    
    
    @IBOutlet weak var genderButton: UIButton!
    
    
    //MARK: Actions
    
    
    @IBAction func backButtonPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
    //Functions to change text of buttons
    
    func changeSex(text : String) {
        sexButton.setTitle(text, forState: .Normal)
    }
    
    func changeGender(text: String) {
        genderButton.setTitle(text, forState: .Normal)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "dots.png")!)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
