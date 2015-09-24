//
//  DiscoverViewController.swift
//  Tinderoni
//
//  Created by Jie on 9/8/15.
//  Copyright (c) 2015 Jie. All rights reserved.
//

import UIKit

// ... in a view controller

class DiscoverViewController: UIViewController, MDCSwipeToChooseDelegate {
    @IBOutlet weak var menuButton: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
            // Uncomment to change the width of menu
            self.revealViewController().rearViewRevealWidth = 270
        }
        
        let options = MDCSwipeToChooseViewOptions()
        options.delegate = self
        options.likedText = "Like"
        options.likedColor = UIColor.redColor()
        options.nopeText = "Nope"
        options.onPan = { state -> Void in
            if state.thresholdRatio == 1 && state.direction == MDCSwipeDirection.Left {
                print("Photo deleted!")
            }
        }
        
        // Add the card view to the main view
        let cardView = MDCSwipeToChooseView(frame: CGRectMake(20, 84, self.view.bounds.width-40, self.view.bounds.height-200), options: options)
        
        let discover = DiscoverView(frame: CGRectMake(0, 0, cardView.bounds.width, cardView.bounds.height))
        discover.image.image = UIImage(named: "Beauty")
        discover.clipsToBounds = true
        cardView.addSubview(discover)
        cardView.sendSubviewToBack(discover)
        self.view.addSubview(cardView)
        
        // Add constraints to the card view
        /*
        let views = [
            "cardView":cardView
        ]
        let horizontalConstraint = NSLayoutConstraint.constraintsWithVisualFormat("H:|-20-[cardView]-20-|", options: [], metrics: nil, views: views)
        let verticalConstraint = NSLayoutConstraint.constraintsWithVisualFormat("V:|-84-[cardView]-104-|", options: [], metrics: nil, views: views)
        */
        
        //self.view.addConstraints(horizontalConstraint)
        //self.view.addConstraints(verticalConstraint)

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // This is called when a user didn't fully swipe left or right.
    func viewDidCancelSwipe(view: UIView) -> Void{
        print("Couldn't decide, huh?")
    }
    
    // Sent before a choice is made. Cancel the choice by returning `false`. Otherwise return `true`.
    func view(view: UIView, shouldBeChosenWithDirection: MDCSwipeDirection) -> Bool{
        if (shouldBeChosenWithDirection == MDCSwipeDirection.Left) {
            return true;
        } else {
            // Snap the view back and cancel the choice.
            UIView.animateWithDuration(0.16, animations: { () -> Void in
                view.transform = CGAffineTransformIdentity
                view.center = view.superview!.center
            })
            return false;
        }
    }
    
    // This is called then a user swipes the view fully left or right.
    func view(view: UIView, wasChosenWithDirection: MDCSwipeDirection) -> Void{
        if wasChosenWithDirection == MDCSwipeDirection.Left {
            print("Photo deleted!")
        }else{
            print("Photo saved!")
        }
    }


}

