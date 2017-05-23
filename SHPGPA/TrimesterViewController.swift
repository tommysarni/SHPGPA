//
//  TrimesterViewController.swift
//  SHPGPA
//
//  Created by Tommy Sarni on 5/6/17.
//  Copyright © 2017 SHP. All rights reserved.
//

import UIKit

class TrimesterViewController: UIViewController, UIApplicationDelegate {

    
    var weightedData = String()
    var unWeightedData = String()
    
    
    
    @IBOutlet weak var averageWeighted: UILabel!
   
    @IBOutlet weak var appTitle: UILabel!
    
    
    @IBOutlet weak var firstTrimesterLabel: UILabel!
    
    @IBOutlet weak var firstTrimesterWeightedLabel: UILabel!
    
    @IBOutlet weak var firstTrimesterUnweightedLabel: UILabel!
    
    @IBOutlet weak var secondTrimesterLabel: UILabel!
    
    @IBOutlet weak var secondTrimesterWeightedLabel: UILabel!
    
    @IBOutlet weak var secondTrimesterUnweightedLabel: UILabel!
    
    @IBOutlet weak var thirdTrimesterLabel: UILabel!
    
    @IBOutlet weak var thirdTrimesterWeightedLabel: UILabel!
    
    @IBOutlet weak var thirdTrimesterUnweightedLabel: UILabel!
    
    
    @IBOutlet weak var oneWeightedLabel: UILabel!
    
    @IBOutlet weak var oneUnweightedLabel: UILabel!
    
    
    @IBOutlet weak var twoWeightedLabel: UILabel!
    
    @IBOutlet weak var twoUnweightedLabel: UILabel!
    
    @IBOutlet weak var threeWeightedLabel: UILabel!
    
    
    @IBOutlet weak var threeUnweightedLabel: UILabel!
    
    
    @IBOutlet weak var averageLabel: UILabel!
    
    
    
    var currentOneString = String()
    var currentTwoString = String()
    var currentThreeString = String()
    
    @IBAction func saveGradeOne(_ sender: UIButton) {
        
        if Double(weightedData) != nil && isGPAWeighted == true {
            
        let numberWeightedData = Double(weightedData)
        let personalizedWeighted = numberFormatter.string(from: NSNumber(value: numberWeightedData!))
        if isGPAWeighted == true {
            oneWeightedLabel.text! = personalizedWeighted!
            let defaults = UserDefaults.standard
            defaults.set(personalizedWeighted, forKey: "customOne")
        } else {
            print("it was unweighted")
            }
        
        let numberUnweightedData = Double(unWeightedData)
        let personalizedUnweighted = numberFormatter.string(from: NSNumber(value: numberUnweightedData!))
        
            oneUnweightedLabel.text! = personalizedUnweighted!
            
            let defaults = UserDefaults.standard
            defaults.setValue(personalizedWeighted, forKey: "TrimesterOneSaves")
            defaults.setValue(personalizedUnweighted, forKey: "TrimesterOneUnweightedSaves")
        
            
            if (oneUnweightedLabel.text?.isEmpty)! || (oneWeightedLabel.text?.isEmpty)! || (twoUnweightedLabel.text?.isEmpty)! || (oneWeightedLabel.text?.isEmpty)! || (threeUnweightedLabel.text?.isEmpty)! || (oneWeightedLabel.text?.isEmpty)! {
                print("Average couldnt be found")
            } else {
                let averageUnweightedTrimesters = (Double(oneUnweightedLabel.text!)! + Double(twoUnweightedLabel.text!)! + Double(threeUnweightedLabel.text!)!) / 3
                let averageTrimesters = (Double(oneWeightedLabel.text!)! + Double(twoWeightedLabel.text!)! + Double(threeWeightedLabel.text!)!) / 3
                let formattedAverageTrimesters = numberFormatter.string(from: NSNumber(value: averageTrimesters))
                let formattedAverageUnweightedTrimesters = numberFormatter.string(from: NSNumber(value: averageUnweightedTrimesters))
                averageWeighted.text! = "\(formattedAverageTrimesters!)"
                averageLabel.text! = "\(formattedAverageUnweightedTrimesters!)"
                
            }

        }
    }
    
    @IBAction func saveGradeTwo(_ sender: UIButton) {
        if Double(weightedData) != nil && isGPAWeighted == true {
               let numberWeightedData = Double(weightedData)
        let personalizedWeighted = numberFormatter.string(from: NSNumber(value: numberWeightedData!))
            if isGPAWeighted == true {
            twoWeightedLabel.text! = personalizedWeighted!
                let defaults = UserDefaults.standard
                defaults.set(personalizedWeighted, forKey: "customTwo")
            } else {
                print("it was unweighted")
            }
        let numberUnweightedData = Double(unWeightedData)
            if numberUnweightedData != nil {
        let personalizedUnweighted = numberFormatter.string(from: NSNumber(value: numberUnweightedData!))
            
            twoUnweightedLabel.text! = personalizedUnweighted!
            
        let defaults = UserDefaults.standard
        defaults.setValue(personalizedWeighted, forKey: "TrimesterTwoSaves")
        defaults.setValue(personalizedUnweighted, forKey: "TrimesterTwoUnweightedSaves")
            
            }
            
            if (oneUnweightedLabel.text?.isEmpty)! || (oneWeightedLabel.text?.isEmpty)! || (twoUnweightedLabel.text?.isEmpty)! || (oneWeightedLabel.text?.isEmpty)! || (threeUnweightedLabel.text?.isEmpty)! || (oneWeightedLabel.text?.isEmpty)! {
                print("Average couldnt be found")
            } else {
                let averageUnweightedTrimesters = (Double(oneUnweightedLabel.text!)! + Double(twoUnweightedLabel.text!)! + Double(threeUnweightedLabel.text!)!) / 3
                let averageTrimesters = (Double(oneWeightedLabel.text!)! + Double(twoWeightedLabel.text!)! + Double(threeWeightedLabel.text!)!) / 3
                let formattedAverageTrimesters = numberFormatter.string(from: NSNumber(value: averageTrimesters))
                let formattedAverageUnweightedTrimesters = numberFormatter.string(from: NSNumber(value: averageUnweightedTrimesters))
                averageWeighted.text! = "\(formattedAverageTrimesters!)"
                averageLabel.text! = "\(formattedAverageUnweightedTrimesters!)"
                
            }

    
        }
    }
    @IBAction func saveGradeThree(_ sender: UIButton) {
        
        if Double(weightedData) != nil && isGPAWeighted == true {
        
        let numberWeightedData = Double(weightedData)
        let personalizedWeighted = numberFormatter.string(from: NSNumber(value: numberWeightedData!))
            if isGPAWeighted == true {
            threeWeightedLabel.text! = personalizedWeighted!
                let defaults = UserDefaults.standard
                defaults.set(personalizedWeighted, forKey: "customThree")
            } else {
                print("it was unweighted")
            }
        let numberUnweightedData = Double(unWeightedData)
        let personalizedUnweighted = numberFormatter.string(from: NSNumber(value: numberUnweightedData!))
            threeUnweightedLabel.text! = personalizedUnweighted!
            
        let defaults = UserDefaults.standard
        defaults.setValue(personalizedWeighted, forKey: "TrimesterThreeSaves")
        defaults.setValue(personalizedUnweighted, forKey: "TrimesterThreeUnweightedSaves")
            
            
            
            if (oneUnweightedLabel.text?.isEmpty)! || (oneWeightedLabel.text?.isEmpty)! || (twoUnweightedLabel.text?.isEmpty)! || (oneWeightedLabel.text?.isEmpty)! || (threeUnweightedLabel.text?.isEmpty)! || (oneWeightedLabel.text?.isEmpty)! {
                print("Average couldnt be found")
            } else {
                let averageUnweightedTrimesters = (Double(oneUnweightedLabel.text!)! + Double(twoUnweightedLabel.text!)! + Double(threeUnweightedLabel.text!)!) / 3
                let averageTrimesters = (Double(oneWeightedLabel.text!)! + Double(twoWeightedLabel.text!)! + Double(threeWeightedLabel.text!)!) / 3
                let formattedAverageTrimesters = numberFormatter.string(from: NSNumber(value: averageTrimesters))
                let formattedAverageUnweightedTrimesters = numberFormatter.string(from: NSNumber(value: averageUnweightedTrimesters))
                averageWeighted.text! = "\(formattedAverageTrimesters!)"
                averageLabel.text! = "\(formattedAverageUnweightedTrimesters!)"
                
            }

        
        }
    }
    
    let numberFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 3
        return nf
    } ()

    @IBAction func resetOne(_ sender: UIButton) {
        
        oneWeightedLabel.text! = ""
        oneUnweightedLabel.text! = ""
        averageWeighted.text! = ""
        averageLabel.text! = ""
        let defaults = UserDefaults.standard
       defaults.set("", forKey: "TrimesterOneSaves")
        defaults.set("", forKey: "TrimesterOneUnweightedSaves")
        
    }
    
    @IBAction func resetTwo(_ sender: UIButton) {
        
        twoWeightedLabel.text! = ""
        twoUnweightedLabel.text! = ""
        averageWeighted.text! = ""
        averageLabel.text! = ""
        let defaults = UserDefaults.standard
        defaults.set("", forKey: "TrimesterTwoSaves")
        defaults.set("", forKey: "TrimesterTwoUnweightedSaves")
    }
    
    @IBAction func resetThree(_ sender: UIButton) {
        
        threeWeightedLabel.text! = ""
        threeUnweightedLabel.text! = ""
        averageWeighted.text! = ""
        averageLabel.text! = ""
        let defaults = UserDefaults.standard
        defaults.set("", forKey: "TrimesterThreeSaves")
        defaults.set("", forKey: "TrimesterThreeUnweightedSaves")
    }
    
    
    
    @IBAction func pageControllerToVC1(_ sender: pageControllers) {
        self.performSegue(withIdentifier: "2VC", sender: self)
    }
    
    
    @IBAction func unwindToVC(segue: UIStoryboardSegue) {
        
    }
    
    var isGPAWeighted = Bool()
   
    override func viewDidLoad() {
        super.viewDidLoad()
print("2VC")
        
        let appTitleBorderedText = NSAttributedString(string: appTitle.text!, attributes: [
            NSStrokeColorAttributeName: firstTrimesterLabel.textColor,
            NSForegroundColorAttributeName : UIColor.white,
            NSStrokeWidthAttributeName : -8.0
            ])
        
        appTitle.attributedText = appTitleBorderedText
        
        
        
        let defaults = UserDefaults.standard
       // print("weighted: \(defaults.finaGPAText)")
       // print("unweighted: \(defaults.duplicateFinalGPAText)")
        
        if let currentOneStrings = defaults.string(forKey: "customOne") {
            currentOneString = currentOneStrings
        }
        
        
        
        if let currentTwoStrings = defaults.string(forKey: "customTwo") {
            currentTwoString = currentTwoStrings
        }
        
        
        if let currentThreeStrings = defaults.string(forKey: "customThree") {
            
        currentThreeString = currentThreeStrings
        }
        
        if defaults.bool(forKey: "isGPAWeighted") == true {
            isGPAWeighted = true
        } else {
            isGPAWeighted = false
        }
        
                if let stringOne = defaults.string(forKey: "finalGPAText") {
            weightedData = stringOne
            print("\(stringOne)")
        }
        
        if let stringTwo = defaults.string(forKey: "duplicateFinalGPAText") {
            unWeightedData = stringTwo
            print("\(stringTwo)")
        }
        
        if  (oneWeightedLabel.text?.isEmpty)! {
        
            if let firstTrimesterSaves = defaults.string(forKey: "TrimesterOneSaves") {
            oneWeightedLabel.text! = firstTrimesterSaves
    }
        }
        /*else {
          oneWeightedLabel.text! = currentOneString
        }
        */
    if  (twoWeightedLabel.text?.isEmpty)! {
        if let secondTrimesterSaves = defaults.string(forKey: "TrimesterTwoSaves") {
            twoWeightedLabel.text! = secondTrimesterSaves
        }
        }
   /* else {
            twoWeightedLabel.text! = currentTwoString
        }
 */
    if  (threeWeightedLabel.text?.isEmpty)! {
        
        if let thirdTrimesterSaves = defaults.string(forKey: "TrimesterThreeSaves") {
            threeWeightedLabel.text! = thirdTrimesterSaves
        }
        }
    /*else {
            threeWeightedLabel.text! = currentThreeString
        }
        */
        if let firstTrimesterUnweightedSaves = defaults.string(forKey: "TrimesterOneUnweightedSaves") {
            oneUnweightedLabel.text! = firstTrimesterUnweightedSaves
        }
        
        
        if let secondTrimesterUnweightedSaves = defaults.string(forKey: "TrimesterTwoUnweightedSaves") {
            twoUnweightedLabel.text! = secondTrimesterUnweightedSaves
        }
        
        
        
        if let thirdTrimesterUnweightedSaves = defaults.string(forKey: "TrimesterThreeUnweightedSaves") {
            threeUnweightedLabel.text! = thirdTrimesterUnweightedSaves
        }

        if (oneUnweightedLabel.text?.isEmpty)! || (oneWeightedLabel.text?.isEmpty)! || (twoUnweightedLabel.text?.isEmpty)! || (oneWeightedLabel.text?.isEmpty)! || (threeUnweightedLabel.text?.isEmpty)! || (oneWeightedLabel.text?.isEmpty)! {
            print("Average couldnt be found")
        } else {
            let averageUnweightedTrimesters = (Double(oneUnweightedLabel.text!)! + Double(twoUnweightedLabel.text!)! + Double(threeUnweightedLabel.text!)!) / 3
            let averageTrimesters = (Double(oneWeightedLabel.text!)! + Double(twoWeightedLabel.text!)! + Double(threeWeightedLabel.text!)!) / 3
            let formattedAverageTrimesters = numberFormatter.string(from: NSNumber(value: averageTrimesters))
            let formattedAverageUnweightedTrimesters = numberFormatter.string(from: NSNumber(value: averageUnweightedTrimesters))
            averageWeighted.text! = "\(formattedAverageTrimesters!)"
            averageLabel.text! = "\(formattedAverageUnweightedTrimesters!)"
            
        }

        print("\(isGPAWeighted) weighted")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
}
