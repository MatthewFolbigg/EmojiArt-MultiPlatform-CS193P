//
//  Camera.swift
//  EmojiArt-CS193P
//
//  Created by Matthew Folbigg on 31/07/2021.
//

import SwiftUI

struct Camera: UIViewControllerRepresentable {

    var handleCapturedImage: (UIImage?) -> Void
    static var isAvailable: Bool { UIImagePickerController.isSourceTypeAvailable(.camera) }
    typealias UIViewControllerType = UIImagePickerController
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.allowsEditing = true
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        //Doesn't need to update on body rebuild
    }
   
    func makeCoordinator() -> Coordinator {
        Coordinator(handleCapturedImage: handleCapturedImage)
    }
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        var handleCapturedImage: (UIImage?) -> Void
        
        init(handleCapturedImage: @escaping (UIImage?) -> Void) {
            self.handleCapturedImage = handleCapturedImage
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            handleCapturedImage(nil)
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            handleCapturedImage((info[.editedImage] ?? info[.originalImage]) as? UIImage)
        }
    }
    
}
