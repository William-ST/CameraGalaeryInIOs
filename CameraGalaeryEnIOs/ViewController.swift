//
//  ViewController.swift
//  CameraGalaeryEnIOs
//
//  Created by alumno on 11/04/17.
//  Copyright © 2017 area.51. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageViewPhoto: UIImageView!
    
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func usarGaleria() {
        /*
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
        
            imagePicker.sourceType = .photoLibrary
            imagePicker.mediaTypes = UImageController.availableMediaType(for: .photoLibrary)
            
            self.present(imagePicker, animated: true, completion: {})
            
        }
        */
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        var  chosenImage = UIImage()
        chosenImage = info[UIImagePickerControllerOriginalImage] as! UIImage //2
        imageViewPhoto.contentMode = .scaleAspectFit //3
        imageViewPhoto.image = chosenImage //4
        dismiss(animated:true, completion: nil) //5
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)

    }
    
    
    @IBAction func openCameraTouchUp(_ sender: AnyObject) {
        
        
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) {
            
            
            //picker.modalPresentationStyle = .fullScreen
            
            
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera;
            imagePicker.allowsEditing = false
            imagePicker.cameraCaptureMode = .photo
            present(imagePicker, animated: true,completion: nil)
            
            
            
            //self.presentViewController(imagePicker, animated: true, completion: nil)
        }
        
    }
    
    
    @IBAction func galeryTouchUp(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .photoLibrary
        imagePicker.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!
        //imagePicker.modalPresentationStyle = .popover
        present(imagePicker, animated: true, completion: nil)
        //imagePicker.popoverPresentationController?.barButtonItem = sender
        }
    }
    
}

