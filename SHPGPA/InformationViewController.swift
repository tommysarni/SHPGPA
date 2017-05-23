//
//  InformationViewController.swift
//  SHPGPA
//
//  Created by Tommy Sarni on 5/12/17.
//  Copyright © 2017 SHP. All rights reserved.
//

import UIKit

class InformationViewController: UIViewController {

    
    
    
    @IBOutlet weak var cpButton: UIButton!
    
    @IBOutlet weak var honorsButton: UIButton!
    
    @IBOutlet weak var apButton: UIButton!
    
    @IBOutlet weak var aPlusLabel: UILabel!
    
    @IBOutlet weak var aLabel: UILabel!
    
    @IBOutlet weak var bPlusLabel: UILabel!
    
    @IBOutlet weak var bLabel: UILabel!
    
    @IBOutlet weak var cPlusLabel: UILabel!
    
    @IBOutlet weak var cLabel: UILabel!
    
    @IBOutlet weak var dLabel: UILabel!
    
    @IBOutlet weak var fLabel: UILabel!
    
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "backVC", sender: self)
        
    }
    
    @IBAction func swipedDown(gesture: UISwipeGestureRecognizer) {
        self.performSegue(withIdentifier: "backVC", sender: self)
    }
    
    
    
    
    @IBAction func cpButtonPressed(_ sender: UIButton) {
        
        cpButton.tintColor = UIColor.red
        honorsButton.tintColor = UIColor.gray
        apButton.tintColor = UIColor.gray
        
        aPlusLabel.text! = "4.5"
        aLabel.text! = "4.0"
        bPlusLabel.text! = "3.5"
        bLabel.text! = "3.0"
        cPlusLabel.text! = "2.5"
        cLabel.text! = "2.0"
        dLabel.text! = "1.0"
        fLabel.text! = "0.0"
        
        
    }
    
    @IBAction func honorsButtonPressed(_ sender: UIButton) {
        
        cpButton.tintColor = UIColor.gray
        honorsButton.tintColor = UIColor.red
        apButton.tintColor = UIColor.gray
        
        aPlusLabel.text! = "5.0"
        aLabel.text! = "4.5"
        bPlusLabel.text! = "4.0"
        bLabel.text! = "3.5"
        cPlusLabel.text! = "3.0"
        cLabel.text! = "2.5"
        dLabel.text! = "1.0"
        fLabel.text! = "0.0"
        
        
        
        
        
        
        
        
        
    }
    
    @IBAction func apButtonPressed(_ sender: Any) {
        
        cpButton.tintColor = UIColor.gray
        honorsButton.tintColor = UIColor.gray
        apButton.tintColor = UIColor.red
        
        
        
        aPlusLabel.text! = "5.25"
        aLabel.text! = "4.75"
        bPlusLabel.text! = "4.25"
        bLabel.text! = "3.75"
        cPlusLabel.text! = "3.25"
        cLabel.text! = "2.75"
        dLabel.text! = "1.0"
        fLabel.text! = "0.0"
        
        
        
        
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cpButton.tintColor = UIColor.red
        honorsButton.tintColor = UIColor.gray
        apButton.tintColor = UIColor.gray
        
        aPlusLabel.text! = "4.5"
        aLabel.text! = "4.0"
        bPlusLabel.text! = "3.5"
        bLabel.text! = "3.0"
        cPlusLabel.text! = "2.5"
        cLabel.text! = "2.0"
        dLabel.text! = "1.0"
        fLabel.text! = "0.0"
        // Do any additional setup after loading the view.
    }

    
}
