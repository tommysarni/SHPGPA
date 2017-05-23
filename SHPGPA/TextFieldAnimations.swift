//
//  ShakingTextField.swift
//  SHPGPA
//
//  Created by Tommy Sarni on 3/7/17.
//  Copyright © 2017 SHP. All rights reserved.
//

import UIKit
import AudioToolbox
class TextFieldAnimations: UITextField {

    func shake() {
    let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.075
        animation.repeatCount = 2
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 5, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 5, y: self.center.y))
        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
        self.layer.add(animation, forKey: "position")
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
