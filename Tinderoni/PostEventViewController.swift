//
//  PostEventViewController.swift
//  Tinderoni
//
//  Created by Jie on 9/19/15.
//  Copyright (c) 2015 Jie. All rights reserved.
//

import UIKit

class PostEventViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    
    let categoryCell = "postEventCategoryCell"
    
    var categries: [String] = ["Food and Drink", "Outside Activities", "Inside Adventures", "Make my own event"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        table.dataSource = self
    }
    
    // Table view delegate
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.categries.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(categoryCell) as! PostEventCategoryCell
        
        cell.category.text = categries[indexPath.item]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(indexPath.item == 0) {
            self.performSegueWithIdentifier("localEventSegue", sender: self)
        }
        if(indexPath.item == 3) {
            self.performSegueWithIdentifier("createMyOwnEventSegue", sender: self)
        }
    }
    
}

