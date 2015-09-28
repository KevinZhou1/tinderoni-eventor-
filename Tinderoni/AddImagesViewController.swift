//
//  AddImagesViewController.swift
//  Tinderoni
//
//  Created by Kevin Zhou on 9/25/15.
//  Copyright © 2015 Jie. All rights reserved.
//

import UIKit

class AddImagesViewController: UIPageViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

        
    
    @IBOutlet weak var imageView: UIImageView!
        
        let imagePicker = UIImagePickerController()
        
    //MARK: Actions
    
    
    @IBAction func backButtonPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
    
        @IBAction func loadImageButtonTapped(sender: UIButton) {
            imagePicker.allowsEditing = false
            imagePicker.sourceType = .PhotoLibrary
            
            presentViewController(imagePicker, animated: true, completion: nil)
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            imagePicker.delegate = self
        }
        
        // MARK: - UIImagePickerControllerDelegate Methods
    
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageView.contentMode = .ScaleAspectFit
            imageView.image = pickedImage
        }
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
        /*
        func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
            if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
                imageView.contentMode = .ScaleAspectFit
                imageView.image = pickedImage
            }
            
            dismissViewControllerAnimated(true, completion: nil)
        }
        */
        
        func imagePickerControllerDidCancel(picker: UIImagePickerController) {
            dismissViewControllerAnimated(true, completion: nil)
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
