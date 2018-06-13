//
//  MediaViewController.swift
//  Athena
//
//  Created by Cray Jaeger on 6/12/18.
//  Copyright © 2018 Cray Jaeger. All rights reserved.
//

import UIKit

class MediaViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var choosePhotoButton: UIBarButtonItem!
    @IBOutlet weak var takePhotoButton: UIBarButtonItem!
    
    let picker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        picker.delegate = self
    }
    
    @IBAction func choosePhotoButtonPressed(_ sender: UIBarButtonItem) {
        picker.allowsEditing = true
        picker.sourceType = .photoLibrary
        picker.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!
        present(picker, animated: true, completion: nil)
    }
    
    @IBAction func takePhotoButtonPressed(_ sender: UIBarButtonItem) {
        picker.allowsEditing = true
        picker.sourceType = UIImagePickerControllerSourceType.camera
        picker.cameraCaptureMode = .photo
        picker.modalPresentationStyle = .fullScreen
        present(picker,animated: true,completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [String : Any])
    {
        var chosenImage: UIImage!
        if let img = info[UIImagePickerControllerEditedImage] as? UIImage {
            chosenImage = img
            
        }
        else if let img = info[UIImagePickerControllerOriginalImage] as? UIImage {
            chosenImage = img
        }
        //print (info["UIImagePickerControllerImageURL"])
        imageView.contentMode = .scaleAspectFit //3
        imageView.image = chosenImage //4
        dismiss(animated:true, completion: nil) //5
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
}
