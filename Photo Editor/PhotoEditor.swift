//
//  PhotoEditor.swift
//  Photo Editor
//
//  Created by Garrett Fritz on 2/5/19.
//  Copyright © 2019 Mohamed Hamed. All rights reserved.
//

import Foundation
import UIKit

class PhotoEditor : UINavigationController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let photoEditor = PhotoEditorViewController(nibName:"PhotoEditorViewController",bundle: Bundle(for: PhotoEditorViewController.self))
        photoEditor.image = UIImage(named: "img")
        pushViewController(photoEditor, animated: true)
    }
    
}
