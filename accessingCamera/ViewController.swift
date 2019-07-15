//
//  ViewController.swift
//  accessingCamera
//
//  Created by Isabella Maki on 7/15/19.
//  Copyright © 2019 Isabella Maki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController()
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        imagePicker.delegate = self
    }
    
    @IBAction func takePictureTapped(_ sender: Any) {
        
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    

    @IBAction func libraryButtonTapped(_ sender: Any) {
        
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            
            imageView.image = selectedImage
        }
        
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
}

