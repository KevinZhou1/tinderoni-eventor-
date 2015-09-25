//
//  CommonFunctions.swift
//  Tinderoni
//
//  Created by Jie on 9/25/15.
//  Copyright © 2015 Jie. All rights reserved.
//

import Foundation

// Get the hair line image for navigation controller
func findHairlineImageViewUnder(view:UIView!) -> UIView? {
    if view is UIImageView && view.bounds.size.height <= 1.0 {
        return view
    }
    
    for subview in view.subviews as [UIView] {
        if let foundView = findHairlineImageViewUnder(subview) {
            return foundView
        }
    }
    
    return nil
}