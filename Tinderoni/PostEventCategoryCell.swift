//
//  PostEventCategoryCell.swift
//  Tinderoni
//
//  Created by Jie on 9/19/15.
//  Copyright (c) 2015 Jie. All rights reserved.
//

import UIKit

class PostEventCategoryCell: UITableViewCell {
    
    @IBOutlet weak var category: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        let theWidth = UIScreen.mainScreen().bounds.width
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}