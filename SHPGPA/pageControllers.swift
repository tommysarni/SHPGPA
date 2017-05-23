//
//  pageControllers.swift
//  SHPGPA
//
//  Created by Tommy Sarni on 5/6/17.
//  Copyright © 2017 SHP. All rights reserved.
//

import UIKit





class pageControllers: UIButton {

      
    @IBInspectable var cornerRadius: CGFloat = 0.00 {
    
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    
    @IBInspectable var borderLabelColor: UIColor! = UIColor.white {
        didSet {
            layer.borderColor = borderLabelColor!.cgColor
        }
    }
    
    @IBInspectable var borderLabelWidth: CGFloat = 0.00 {
        didSet {
            layer.borderWidth = borderLabelWidth
        }
    }
    
    
    
    
    
    
    
}
