//
//  LocalEventViewController.swift
//  Tinderoni
//
//  Created by Jie on 9/19/15.
//  Copyright © 2015 Jie. All rights reserved.
//

import Foundation

class LocalEventViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    
    let cellName = "localEventCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
    }
    
    @IBAction func cancel(sender: AnyObject) {
        self.navigationController?.dismissViewControllerAnimated(true, completion: nil)
    }
    
    // Table view methods
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellName) as! LocalEventCell
        
        cell.brandImage.image = UIImage(named: "Discover")
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("localEventGenerateSegue", sender: self)
    }
    
}