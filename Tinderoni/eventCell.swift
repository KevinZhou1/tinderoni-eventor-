//
//  eventCell.swift
//  Tinderoni
//
//  Created by Jie on 9/25/15.
//  Copyright © 2015 Jie. All rights reserved.
//

import UIKit

class EventCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var eventPosterImageView: UIImageView!
    @IBOutlet weak var eventName: UILabel!
    @IBOutlet weak var eventTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        eventPosterImageView.layer.cornerRadius = eventPosterImageView.bounds.width/2
        eventPosterImageView.clipsToBounds = true
    }
    
    override func layoutSubviews() {
        let radius = CGFloat(1.0)
        cardView.layer.cornerRadius = radius
        let shadowPath = UIBezierPath(roundedRect: cardView.bounds, cornerRadius: radius)
        
        cardView.layer.masksToBounds = false
        cardView.layer.shadowColor = UIColor.blackColor().CGColor
        cardView.layer.shadowOffset = CGSize(width: -0.2, height: -0.2);
        cardView.layer.shadowOpacity = 0.2
        cardView.layer.shadowPath = shadowPath.CGPath
    }
    

}
