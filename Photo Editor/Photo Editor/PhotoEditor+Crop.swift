//
//  PhotoEditor+Crop.swift
//  Pods
//
//  Created by Mohamed Hamed on 6/16/17.
//
//

import Foundation
import UIKit

// MARK: - CropView
extension PhotoEditorViewController: OldCropViewControllerDelegate {
    
    public func cropViewController(_ controller: OldCropViewController, didFinishCroppingImage image: UIImage, transform: CGAffineTransform, cropRect: CGRect) {
        controller.dismiss(animated: true, completion: nil)
        self.setImageView(image: image)
    }
    
    public func cropViewControllerDidCancel(_ controller: OldCropViewController) {
        controller.dismiss(animated: true, completion: nil)
    }
    
}
