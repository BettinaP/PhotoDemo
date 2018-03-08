//
//  ViewController.swift
//  Photo Demo
//
//  Created by Bettina on 3/7/18.
//  Copyright © 2018 Bettina Prophete. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
 
    }

    @IBAction func importImageTapped(_ sender: Any) {
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = UIImagePickerControllerSourceType.photoLibrary //select camera if accessing camera itself
        imagePickerController.allowsEditing = false
        self.present(imagePickerController, animated: true, completion: nil)
        
    }

    //process image that was selected from photo library
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        //try get image from info(dictionary) that's been passed in as parameter
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            
            imageView.image = image
        
        } else {
        
            print("there was a problem getting image")
        
        }
        
        self.dismiss(animated: true, completion: nil)
        
    }
}

