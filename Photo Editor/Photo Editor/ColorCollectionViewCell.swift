//
//  ColorCollectionViewCell.swift
//  Photo Editor
//
//  Created by Mohamed Hamed on 5/1/17.
//  Copyright © 2017 Mohamed Hamed. All rights reserved.
//

import UIKit

class ColorCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var colorView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        colorView.layer.cornerRadius = colorView.frame.width / 2
        colorView.clipsToBounds = true
        colorView.layer.borderWidth = isSelected ? 3.0 : 1.0
        colorView.layer.borderColor = isSelected ? PhotoEditorViewController.accentColor.cgColor : UIColor.white.cgColor
    }
    
    override var isSelected: Bool {
        
        didSet {
            
            colorView.layer.cornerRadius = colorView.frame.width / 2
            colorView.layer.borderWidth = isSelected ? 3.0 : 1.0
            colorView.layer.borderColor = isSelected ? PhotoEditorViewController.accentColor.cgColor : UIColor.white.cgColor
            
            
        }
    }
}
