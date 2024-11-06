//
//  ImagePicker.swift
//  Split&Go
//
//  Created by Владислав on 06.11.2024.
//

import Foundation
import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIImagePickerController
    typealias Coordinator = ImagePickerCoordinator
    
    var sourceType: UIImagePickerController.SourceType = .camera
    var completion: (UIImage) -> Void
    
    func makeCoordinator() -> ImagePickerCoordinator {
        <#code#>
    }
}

class ImagePickerCoordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    let parent: ImagePicker
    
    init(parent: ImagePicker) {
        self.parent = parent
    }
}
