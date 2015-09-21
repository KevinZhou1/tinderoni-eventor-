//
//  localEventCell.swift
//  Tinderoni
//
//  Created by Jie on 9/19/15.
//  Copyright © 2015 Jie. All rights reserved.
//

import UIKit

class LocalEventCell: UITableViewCell {
    
    @IBOutlet weak var brandImage: UIImageView!
    @IBOutlet weak var localEventTitle: UILabel!
    @IBOutlet weak var localEventTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}