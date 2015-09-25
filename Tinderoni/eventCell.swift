//
//  eventCell.swift
//  Tinderoni
//
//  Created by Jie on 9/25/15.
//  Copyright © 2015 Jie. All rights reserved.
//

import UIKit

class EventCell: UITableViewCell {

    @IBOutlet weak var eventPosterImageView: UIImageView!
    @IBOutlet weak var eventName: UILabel!
    @IBOutlet weak var eventTime: UILabel!
    @IBOutlet weak var eventCategary: UILabel!
    
    override func layoutSubviews() {
        let radius = CGFloat(2.0)
        layer.cornerRadius = radius
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: radius)
        
        layer.masksToBounds = false
        layer.shadowColor = UIColor.blackColor().CGColor
        layer.shadowOffset = CGSize(width: 0, height: 3);
        layer.shadowOpacity = 0.5
        layer.shadowPath = shadowPath.CGPath
    }
    

}
