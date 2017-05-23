//
//  ViewController.swift
//  SHPGPA
//
//  Created by Tommy Sarni on 2/21/17.
//  Copyright © 2017 SHP. All rights reserved.
//

import UIKit
import Crashlytics
import Social



class ViewController: UIViewController, UITextFieldDelegate, UIApplicationDelegate {

    @IBOutlet weak var allTextFieldsView: UIView!

    @IBOutlet weak var shareButtonLabel: UIView!
    
    @IBOutlet weak var addABlockLabel: UIButton!
    
    @IBOutlet weak var aBlockLabel: UILabel!
    
    @IBOutlet weak var bBlockLabel: UILabel!
    
    @IBOutlet weak var dBlockLabel: UILabel!
    
    @IBOutlet weak var gBlockLabel: UILabel!
    
    @IBOutlet weak var fBlockLabel: UILabel!
    
    @IBOutlet weak var eBlockLabel: UILabel!
    
    @IBOutlet weak var cBlockLabel: UILabel!
    
    @IBOutlet weak var resetOutlet: UIButton!
    
    @IBOutlet weak var eigthBlockLabel: UILabel!

    @IBOutlet weak var appTitle: UILabel!
    
    @IBOutlet weak var shpLogo: UIImageView!
    
    @IBOutlet weak var calculateOutlet: UIButton!
    
    
    
    var isThereAnAddedBlock: Bool! = false
    
   
    
    @IBAction func addBlock(_ sender: UIButton) {
       
        
        
        print(alphabeticalToolBar.center, resetOutlet.center, calculateOutlet.center, finalGPA.frame, previousGPAInput.center)
        
        alphabeticalToolBar.translatesAutoresizingMaskIntoConstraints = true
        resetOutlet.translatesAutoresizingMaskIntoConstraints = true
        calculateOutlet.translatesAutoresizingMaskIntoConstraints = true
        finalGPA.translatesAutoresizingMaskIntoConstraints = true
        previousGPAInput.translatesAutoresizingMaskIntoConstraints = true
        shpLogo.translatesAutoresizingMaskIntoConstraints = true
        appTitle.translatesAutoresizingMaskIntoConstraints = true
        addABlockLabel.translatesAutoresizingMaskIntoConstraints = true
        shareButtonLabel.translatesAutoresizingMaskIntoConstraints = true
        
        
        
        
        
        
        if isThereAnAddedBlock == false {
        
            sender.setTitle("Remove Block", for: .normal)
    
        UIView.animate(withDuration: 0.6, delay: 0.1, options: .curveEaseInOut, animations: {
            
            
            self.alphabeticalToolBar.frame.origin.y = self.alphabeticalToolBar.frame.origin.y + 48.0
            self.resetOutlet.frame.origin.y = self.resetOutlet.frame.origin.y + 48.0
            self.calculateOutlet.frame.origin.y = self.calculateOutlet.frame.origin.y + 48.0
            self.finalGPA.frame.origin.y = self.finalGPA.frame.origin.y + 48.0
            self.previousGPAInput.frame.origin.y = self.previousGPAInput.frame.origin.y + 48.0
            
        }, completion: {
            finished in print("Move completed")
           
        })
            
            UIView.animate(withDuration: 0.3, animations: {
                self.shpLogo.alpha = 0
            })
            
            isThereAnAddedBlock = true
            
           
            eigthBlockLabel.isHidden = false
            eigthBlockLabel.alpha = 0
            UIView.animate(withDuration: 1.5) {
                self.eigthBlockLabel.alpha = 1
            }
            
            
            eigthBlock.isHidden = false
            eigthBlock.alpha = 0
            UIView.animate(withDuration: 1.5) {
                self.eigthBlock.alpha = 1
            }
            
            
            segmentedControlEigth.isHidden = false
            segmentedControlEigth.alpha = 0
            UIView.animate(withDuration: 1.5) {
                self.segmentedControlEigth.alpha = 1
            }
        
        } else {
            
            sender.setTitle("Add a Block", for: .normal)
            
            UIView.animate(withDuration: 0.6, delay: 0.1, options: .curveEaseInOut, animations: {
                
                self.alphabeticalToolBar.frame.origin.y = self.alphabeticalToolBar.frame.origin.y - 48.0
                self.resetOutlet.frame.origin.y = self.resetOutlet.frame.origin.y - 48.0
                self.calculateOutlet.frame.origin.y = self.calculateOutlet.frame.origin.y - 48.0
                self.finalGPA.frame.origin.y = self.finalGPA.frame.origin.y - 48.0
                self.previousGPAInput.frame.origin.y = self.previousGPAInput.frame.origin.y - 48.0
                

                
            }, completion: {
                finished in print("Move completed")
                self.shpLogo.isHidden = false
            })
            
            
            
            
            
            shpLogo.alpha = 0
            UIView.animate(withDuration: 1.5) {
                self.shpLogo.alpha = 1
            }
            
            isThereAnAddedBlock = false
         
            
            UIView.animate(withDuration: 0.3, animations: {
                self.eigthBlockLabel.alpha = 0
            }) { (finished) in
                self.eigthBlockLabel.isHidden = true
            }
         
            UIView.animate(withDuration: 0.3, animations: {
                self.eigthBlock.alpha = 0
            }) { (finished) in
                self.eigthBlock.isHidden = true
            }
            
            UIView.animate(withDuration: 0.3, animations: {
                self.segmentedControlEigth.alpha = 0
            }) { (finished) in
                self.segmentedControlEigth.isHidden = true
            }
            
         
            
        }
     
       
    }
 
    //TextField Restrictions
    
     func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
     let maxLength = 4
     if (textField.text!.characters.count > maxLength) {
     textField.deleteBackward()
     }
     let existingTextHasDecimalSeparator = textField.text?.range(of: ".")
     let replacementTextHasDecimalSeparator = string.range(of: ".")
     if existingTextHasDecimalSeparator != nil, replacementTextHasDecimalSeparator != nil {
     return false
     } else {
     return true
     }
     }
    
    
    
    var keyboardIsUP: Bool! = false
    var isActiveTextField: Bool! = true
    var constantBool: Bool! = true
   
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        
        
        
        activeTextField = textField
    
        if activeTextField !== nil {
        
            if keyboardIsUP == false && isThereAnAddedBlock == true && alphabeticalGrades == false {
            
            appTitle.translatesAutoresizingMaskIntoConstraints = true
            addABlockLabel.translatesAutoresizingMaskIntoConstraints = true
            alphaVSNumericalSegmentedControl.translatesAutoresizingMaskIntoConstraints = true
            aBlockLabel.translatesAutoresizingMaskIntoConstraints = true
            bBlockLabel.translatesAutoresizingMaskIntoConstraints = true
            cBlockLabel.translatesAutoresizingMaskIntoConstraints = true
            dBlockLabel.translatesAutoresizingMaskIntoConstraints = true
            eBlockLabel.translatesAutoresizingMaskIntoConstraints = true
            fBlockLabel.translatesAutoresizingMaskIntoConstraints = true
            gBlockLabel.translatesAutoresizingMaskIntoConstraints = true
            eigthBlockLabel.translatesAutoresizingMaskIntoConstraints = true
            gradeABlock.translatesAutoresizingMaskIntoConstraints = true
            gradeBBlock.translatesAutoresizingMaskIntoConstraints = true
            gradeCBlock.translatesAutoresizingMaskIntoConstraints = true
            gradeDBlock.translatesAutoresizingMaskIntoConstraints = true
            gradeEBlock.translatesAutoresizingMaskIntoConstraints = true
            gradeFBlock.translatesAutoresizingMaskIntoConstraints = true
            gradeGBlock.translatesAutoresizingMaskIntoConstraints = true
            eigthBlock.translatesAutoresizingMaskIntoConstraints = true
            segmentedControlA.translatesAutoresizingMaskIntoConstraints = true
            segmentedControlB.translatesAutoresizingMaskIntoConstraints = true
            segmentedControlC.translatesAutoresizingMaskIntoConstraints = true
            segmentedControlD.translatesAutoresizingMaskIntoConstraints = true
            segmentedControlE.translatesAutoresizingMaskIntoConstraints = true
            segmentedControlF.translatesAutoresizingMaskIntoConstraints = true
            segmentedControlG.translatesAutoresizingMaskIntoConstraints = true
            segmentedControlEigth.translatesAutoresizingMaskIntoConstraints = true
            allTextFieldsView.translatesAutoresizingMaskIntoConstraints = true
               
                
                
                
                
                
                
                
        UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseIn, animations: {
 
            self.appTitle.frame.origin.y -= 100
            self.addABlockLabel.frame.origin.y -= 100
            self.alphaVSNumericalSegmentedControl.frame.origin.y -= 100
            self.shareButtonLabel.frame.origin.y -= 100
            
                /*
            self.aBlockLabel.frame.origin.y -= (self.view.frame.height * 0.09)
            self.bBlockLabel.frame.origin.y -= (self.view.frame.height * 0.09)
            self.cBlockLabel.frame.origin.y -= (self.view.frame.height * 0.09)
            self.dBlockLabel.frame.origin.y -= (self.view.frame.height * 0.09)
            self.eBlockLabel.frame.origin.y -= (self.view.frame.height * 0.09)
            self.fBlockLabel.frame.origin.y -= (self.view.frame.height * 0.09)
            self.gBlockLabel.frame.origin.y -= (self.view.frame.height * 0.09)
            self.eigthBlockLabel.frame.origin.y -= (self.view.frame.height * 0.09)
            self.gradeABlock.frame.origin.y -= (self.view.frame.height * 0.09)
            self.gradeBBlock.frame.origin.y -= (self.view.frame.height * 0.09)
            self.gradeCBlock.frame.origin.y -= (self.view.frame.height * 0.09)
            self.gradeDBlock.frame.origin.y -= (self.view.frame.height * 0.09)
            self.gradeEBlock.frame.origin.y -= (self.view.frame.height * 0.09)
            self.gradeFBlock.frame.origin.y -= (self.view.frame.height * 0.09)
            self.gradeGBlock.frame.origin.y -= (self.view.frame.height * 0.09)
            self.eigthBlock.frame.origin.y -= (self.view.frame.height * 0.09)

            self.segmentedControlA.frame.origin.y -= (self.view.frame.height * 0.09)
            self.segmentedControlB.frame.origin.y -= (self.view.frame.height * 0.09)
            self.segmentedControlC.frame.origin.y -= (self.view.frame.height * 0.09)
            self.segmentedControlD.frame.origin.y -= (self.view.frame.height * 0.09)
            self.segmentedControlE.frame.origin.y -= (self.view.frame.height * 0.09)
            self.segmentedControlF.frame.origin.y -= (self.view.frame.height * 0.09)
            self.segmentedControlG.frame.origin.y -= (self.view.frame.height * 0.09)
            self.segmentedControlEigth.frame.origin.y -= (self.view.frame.height * 0.09)
            */
            
            self.allTextFieldsView.frame.origin.y -= (self.view.frame.height * 0.09)
            
        }, completion: { finished in print("blank")
            
            
            
            self.keyboardIsUP = true
            
            UIView.animate(withDuration: 0.5) {
                self.appTitle.alpha = 0
            }
            UIView.animate(withDuration: 0.5) {
                self.addABlockLabel.alpha = 0
            }
            UIView.animate(withDuration: 0.5) {
                self.alphaVSNumericalSegmentedControl.alpha = 0
            }
            UIView.animate(withDuration: 0.5) {
                self.shareButtonLabel.alpha = 0
            }

            })
            
            
            
           }
            
    
 
        }
        
        /*else if keyboardIsUP == true && isThereAnAddedBlock == true && alphabeticalGrades == false  {
        
            UIView.animate(withDuration: 0.5, delay: 0.00, options: .curveEaseOut, animations: {
                
                self.appTitle.frame.origin.y += 100
                self.addABlockLabel.frame.origin.y += 100
                self.alphaVSNumericalSegmentedControl.frame.origin.y += 100
                self.aBlockLabel.frame.origin.y += 60
                self.bBlockLabel.frame.origin.y += 60
                self.cBlockLabel.frame.origin.y += 60
                self.dBlockLabel.frame.origin.y += 60
                self.eBlockLabel.frame.origin.y += 60
                self.fBlockLabel.frame.origin.y += 60
                self.gBlockLabel.frame.origin.y += 60
                self.eigthBlockLabel.frame.origin.y += 60
                self.gradeABlock.frame.origin.y += 60
                self.gradeBBlock.frame.origin.y += 60
                self.gradeCBlock.frame.origin.y += 60
                self.gradeDBlock.frame.origin.y += 60
                self.gradeEBlock.frame.origin.y += 60
                self.gradeFBlock.frame.origin.y += 60
                self.gradeGBlock.frame.origin.y += 60
                self.eigthBlock.frame.origin.y += 60
                
                self.segmentedControlA.frame.origin.y += 60
                self.segmentedControlB.frame.origin.y += 60
                self.segmentedControlC.frame.origin.y += 60
                self.segmentedControlD.frame.origin.y += 60
                self.segmentedControlE.frame.origin.y += 60
                self.segmentedControlF.frame.origin.y += 60
                self.segmentedControlG.frame.origin.y += 60
                self.segmentedControlEigth.frame.origin.y += 60
            } , completion: { finished in print("hi")
                
                
                
                UIView.animate(withDuration: 0.1) {
                    self.appTitle.alpha = 1.0
                }
                UIView.animate(withDuration: 0.1) {
                    self.addABlockLabel.alpha = 1.0
                }
                UIView.animate(withDuration: 0.1) {
                    self.alphaVSNumericalSegmentedControl.alpha = 1.0
                }
            })
        }*/
    }
    
    
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        
       // if  (gradeABlock.text?.isEmpty)! || (gradeBBlock.text?.isEmpty)! || (gradeCBlock.text?.isEmpty)! || (gradeDBlock.text?.isEmpty)! || (gradeEBlock.text?.isEmpty)! || (gradeFBlock.text?.isEmpty)! || (gradeGBlock.text?.isEmpty)!  {
       //    keyboardIsUP = false
    
   // }
    
        if activeTextField !== nil {
        
            if isThereAnAddedBlock == true && alphabeticalGrades == false && keyboardIsUP == true  {
        
       // && (activeTextField == eigthBlock || activeTextField == gradeABlock || activeTextField == gradeBBlock || activeTextField == gradeCBlock || activeTextField == gradeDBlock || activeTextField == gradeEBlock || activeTextField == gradeFBlock || activeTextField == gradeGBlock)
            
        
            if  (gradeABlock.text?.isEmpty)! || (gradeBBlock.text?.isEmpty)! || (gradeCBlock.text?.isEmpty)! || (gradeDBlock.text?.isEmpty)! || (gradeEBlock.text?.isEmpty)! || (gradeFBlock.text?.isEmpty)! || (gradeGBlock.text?.isEmpty)! || (eigthBlock.text?.isEmpty)! {
                print("nope")
            } else {
            
            
            
            
            UIView.animate(withDuration: 0.5, delay: 0.00, options: .curveEaseOut, animations: {
        
            self.appTitle.frame.origin.y += 100
            self.addABlockLabel.frame.origin.y += 100
            self.alphaVSNumericalSegmentedControl.frame.origin.y += 100
            self.shareButtonLabel.frame.origin.y += 100
                /*
            self.aBlockLabel.frame.origin.y += (self.view.frame.height * 0.09)
            self.bBlockLabel.frame.origin.y += (self.view.frame.height * 0.09)
            self.cBlockLabel.frame.origin.y += (self.view.frame.height * 0.09)
            self.dBlockLabel.frame.origin.y += (self.view.frame.height * 0.09)
            self.eBlockLabel.frame.origin.y += (self.view.frame.height * 0.09)
            self.fBlockLabel.frame.origin.y += (self.view.frame.height * 0.09)
            self.gBlockLabel.frame.origin.y += (self.view.frame.height * 0.09)
            self.eigthBlockLabel.frame.origin.y += (self.view.frame.height * 0.09)
            self.gradeABlock.frame.origin.y += (self.view.frame.height * 0.09)
            self.gradeBBlock.frame.origin.y += (self.view.frame.height * 0.09)
            self.gradeCBlock.frame.origin.y += (self.view.frame.height * 0.09)
            self.gradeDBlock.frame.origin.y += (self.view.frame.height * 0.09)
            self.gradeEBlock.frame.origin.y += (self.view.frame.height * 0.09)
            self.gradeFBlock.frame.origin.y += (self.view.frame.height * 0.09)
            self.gradeGBlock.frame.origin.y += (self.view.frame.height * 0.09)
            self.eigthBlock.frame.origin.y += (self.view.frame.height * 0.09)
            
            self.segmentedControlA.frame.origin.y += (self.view.frame.height * 0.09)
            self.segmentedControlB.frame.origin.y += (self.view.frame.height * 0.09)
            self.segmentedControlC.frame.origin.y += (self.view.frame.height * 0.09)
            self.segmentedControlD.frame.origin.y += (self.view.frame.height * 0.09)
            self.segmentedControlE.frame.origin.y += (self.view.frame.height * 0.09)
            self.segmentedControlF.frame.origin.y += (self.view.frame.height * 0.09)
            self.segmentedControlG.frame.origin.y += (self.view.frame.height * 0.09)
            self.segmentedControlEigth.frame.origin.y += (self.view.frame.height * 0.09)
 */
            self.allTextFieldsView.frame.origin.y += (self.view.frame.height * 0.09)
            } , completion: { finished in print("hi")
                
                self.keyboardIsUP = false
                
                UIView.animate(withDuration: 0.1) {
                    self.appTitle.alpha = 1.0
                }
                UIView.animate(withDuration: 0.1) {
                    self.addABlockLabel.alpha = 1.0
                }
                UIView.animate(withDuration: 0.1) {
                    self.alphaVSNumericalSegmentedControl.alpha = 1.0
                }
                UIView.animate(withDuration: 0.1) {
                    self.shareButtonLabel.alpha = 1.0
                }
                
            })
        }
        
            }
        }
    }

    // ALPHABETICAL TOOL BAR AND TABS
    
    @IBOutlet weak var alphabeticalToolBar: UIToolbar!
    
    var activeTextField: UITextField!
    
    var tabButtonText: String!
    
    @IBOutlet weak var tabAOutlet: UIBarButtonItem!
    
    @IBOutlet weak var tabBOutlet: UIBarButtonItem!
    
    @IBOutlet weak var tabCOutlet: UIBarButtonItem!
    
    
    @IBOutlet weak var tabDOutlet: UIBarButtonItem!
    
    
    @IBOutlet weak var tabFOutlet: UIBarButtonItem!
    
    @IBOutlet weak var tabPlusOutlet: UIBarButtonItem!
    
    
    @IBOutlet weak var tabDeleteOutlet: UIBarButtonItem!
    
    @IBAction func aTabButtonPressed(_ sender: UIBarButtonItem) {

        tabButtonText = "A"
        if activeTextField != nil {
            activeTextField.text! = tabButtonText
        }

        
        print("\(alphabeticalToolBar.frame)")
      
    }
    
    @IBAction func bTabButtonPressed(_ sender: UIBarButtonItem) {
        tabButtonText = "B"
        if activeTextField != nil {
         activeTextField.text! = tabButtonText
        }
        
    }
    
    @IBAction func cTabButtonPressed(_ sender: UIBarButtonItem) {
        tabButtonText = "C"
        if activeTextField != nil {
         activeTextField.text! = tabButtonText
        }
    }
    
    @IBAction func dTabButtonPressed(_ sender: UIBarButtonItem) {
        tabButtonText = "D"
        if activeTextField != nil {
         activeTextField.text! = tabButtonText
        }
    }
    
    
    @IBAction func fTabButtonPressed(_ sender: UIBarButtonItem) {
        tabButtonText = "F"
        if activeTextField != nil {
         activeTextField.text! = tabButtonText
        }
    }
    
    @IBAction func plusMinusTabButtonPressed(_ sender: UIBarButtonItem) {
    if activeTextField != nil {
        
        if ((activeTextField.text!.range(of:"A") != nil) || (activeTextField.text!.range(of:"B") != nil) || (activeTextField.text!.range(of:"C") != nil) || (activeTextField.text!.range(of:"D") != nil)) && (!activeTextField.text!.contains("-")) {
            
            
                if activeTextField.text!.range(of: "+") != nil {
                    activeTextField.deleteBackward()
                } else {
                activeTextField.text!.append("+")
                }
            
            }
        if activeTextField.text!.contains("-") {
            activeTextField.deleteBackward()
            activeTextField.text!.append("+")
        }
        }
        
    }
    @IBOutlet weak var minusTabButtonLabel: UIBarButtonItem!
    
    
    
    @IBAction func MinusTabButtonPressed(_ sender: UIBarButtonItem) {
        if activeTextField != nil {
            
            if ((activeTextField.text!.range(of:"A") != nil) || (activeTextField.text!.range(of:"B") != nil) || (activeTextField.text!.range(of:"C") != nil) || (activeTextField.text!.range(of:"D") != nil)) && (!activeTextField.text!.contains("+")) {
                
                
                if activeTextField.text!.range(of: "-") != nil {
                    activeTextField.deleteBackward()
                } else {
                    activeTextField.text!.append("-")
                }
            }
            if activeTextField.text!.contains("+") {
                activeTextField.deleteBackward()
                activeTextField.text!.append("-")
            }
            
        }
        
    }
    
    
    @IBAction func deleteTabButtonPressed(_ sender: UIBarButtonItem) {
        if activeTextField != nil {
        if activeTextField.text!.isEmpty {
            print("couldnt delete")
        } else {
            activeTextField.deleteBackward()
        }
        }
    }
    
    //END OF TOOLBAR
    
    
       // regular properties -- For calculating the GPA
    var alphabeticalGrades: Bool! = false
    var aGrade = GPAGrades()
    var bGrade = GPAGrades()
    var cGrade = GPAGrades()
    var dGrade = GPAGrades()
    var eGrade = GPAGrades()
    var fGrade = GPAGrades()
    var gGrade = GPAGrades()
    var eightGrade = GPAGrades()
    var finalCalculatedGradePoints: Double! = 0.00
    var duplicateFinalCalculatedGradePoints: Double! = 0.00
    
   
    
    
    //User put in grade properties-- AKA TEXTFIELDS
    @IBOutlet weak var gradeABlock: TextFieldAnimations!
   
    @IBOutlet weak var gradeBBlock: TextFieldAnimations!
    
    @IBOutlet weak var gradeCBlock: TextFieldAnimations!
    
    @IBOutlet weak var gradeDBlock: TextFieldAnimations!
    
    @IBOutlet weak var gradeEBlock: TextFieldAnimations!
    
    @IBOutlet weak var gradeFBlock: TextFieldAnimations!

    @IBOutlet weak var gradeGBlock: TextFieldAnimations!
    
    @IBOutlet weak var eigthBlock: TextFieldAnimations!
    
    @IBOutlet weak var finalGPA: UILabel!
    
    @IBOutlet weak var previousGPAInput: UILabel!
    
    
    
    
    // Alphabetical vs Numerical segmented control
    
    @IBOutlet weak var alphaVSNumericalSegmentedControl: UISegmentedControl!
    
    @IBAction func AlphaNumericalValueChanged(_ sender: UISegmentedControl) {
        switch alphaVSNumericalSegmentedControl.selectedSegmentIndex {
        
                case 1:
            alphabeticalGrades = false
            alphabeticalToolBar.isHidden = true
            
            gradeABlock.text = ""
            gradeBBlock.text = ""
            gradeCBlock.text = ""
            gradeDBlock.text = ""
            gradeEBlock.text = ""
            gradeFBlock.text = ""
            gradeGBlock.text = ""
            if isThereAnAddedBlock == true {
            eigthBlock.text = ""
            } else {
                eigthBlock.isHidden = true
            }
            
            
            //Making keyobard appear when its in number tab
            gradeABlock.inputView = super.inputView
            gradeBBlock.inputView = super.inputView
            gradeCBlock.inputView = super.inputView
            gradeDBlock.inputView = super.inputView
            gradeEBlock.inputView = super.inputView
            gradeFBlock.inputView = super.inputView
            gradeGBlock.inputView = super.inputView
           // if isThereAnAddedBlock == true {
            eigthBlock.inputView = super.inputView
            //}
            
            gradeABlock.resignFirstResponder()
            gradeBBlock.resignFirstResponder()
            gradeCBlock.resignFirstResponder()
            gradeDBlock.resignFirstResponder()
            gradeEBlock.resignFirstResponder()
            gradeFBlock.resignFirstResponder()
            gradeGBlock.resignFirstResponder()
            eigthBlock.resignFirstResponder()
            
        default:
            alphabeticalGrades = true
            alphabeticalToolBar.isHidden = false
            activeTextField = gradeABlock
            gradeABlock.resignFirstResponder()
            gradeBBlock.resignFirstResponder()
            gradeCBlock.resignFirstResponder()
            gradeDBlock.resignFirstResponder()
            gradeEBlock.resignFirstResponder()
            gradeFBlock.resignFirstResponder()
            gradeGBlock.resignFirstResponder()
            eigthBlock.resignFirstResponder()
            
            gradeABlock.text = ""
            gradeBBlock.text = ""
            gradeCBlock.text = ""
            gradeDBlock.text = ""
            gradeEBlock.text = ""
            gradeFBlock.text = ""
            gradeGBlock.text = ""
            eigthBlock.text = ""
            
            
            
            if alphabeticalGrades == true {
                
                
                //makes keyboard not appear when in alphabetical tab mode
                gradeABlock.inputView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
                gradeBBlock.inputView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
                gradeCBlock.inputView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
                gradeDBlock.inputView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
                gradeEBlock.inputView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
                gradeFBlock.inputView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
                gradeGBlock.inputView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
                eigthBlock.inputView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
            }
            if isThereAnAddedBlock == true {
                let textFieldArray = [gradeABlock,gradeBBlock,gradeCBlock,gradeDBlock,gradeEBlock,gradeFBlock,gradeGBlock, eigthBlock]
                
                for textFields in textFieldArray {
                    if activeTextField == textFields {
                        activeTextField = textFields
                    }
                }
            } else {
                let textFieldArray = [gradeABlock,gradeBBlock,gradeCBlock,gradeDBlock,gradeEBlock,gradeFBlock,gradeGBlock]
                
                for textFields in textFieldArray {
                    if activeTextField == textFields {
                        activeTextField = textFields
                    }
                }
                
            }
            

        }
    }
    


   //formattingfinalGPA
    
    let numberFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 3
        return nf
    } ()
    
    
    //Segmented Controls
    
    @IBOutlet weak var segmentedControlA: UISegmentedControl!
    
    
    @IBAction func aIndexChanged(_ sender: UISegmentedControl) {
        
        switch segmentedControlA.selectedSegmentIndex {
        case 0:
            aGrade.classType = "CP"
        case 1:
            aGrade.classType = "Honors"
        case 2:
            aGrade.classType = "AP"
        default:
            aGrade.classType = "CP"
        }
       
    }
    
  
    @IBOutlet weak var segmentedControlB: UISegmentedControl!
    @IBAction func bIndexChanged(_ sender: UISegmentedControl) {
        
        switch segmentedControlB.selectedSegmentIndex {
        case 0:
            bGrade.classType = "CP"
        case 1:
            bGrade.classType = "Honors"
        case 2:
            bGrade.classType = "AP"
        default:
            bGrade.classType = "CP"
        }
    }
    
    
    @IBOutlet weak var segmentedControlC: UISegmentedControl!
    
    @IBAction func cIndexChanged(_ sender: UISegmentedControl) {
        
        
        switch segmentedControlC.selectedSegmentIndex {
        case 0:
            cGrade.classType = "CP"
        case 1:
            cGrade.classType = "Honors"
        case 2:
            cGrade.classType = "AP"
        default:
            cGrade.classType = "CP"
        }
    }
    
    
    @IBOutlet weak var segmentedControlD: UISegmentedControl!
    
    @IBAction func dIndexChanged(_ sender: UISegmentedControl) {
        
        
        switch segmentedControlD.selectedSegmentIndex {
        case 0:
            dGrade.classType = "CP"
        case 1:
            dGrade.classType = "Honors"
        case 2:
            dGrade.classType = "AP"
        default:
            dGrade.classType = "CP"
        }
    }
    
    @IBOutlet weak var segmentedControlE: UISegmentedControl!
    
    @IBAction func eIndexChanged(_ sender: UISegmentedControl) {
        
        
        switch segmentedControlE.selectedSegmentIndex {
        case 0:
            eGrade.classType = "CP"
        case 1:
            eGrade.classType = "Honors"
        case 2:
            eGrade.classType = "AP"
        default:
            eGrade.classType = "CP"
        }
    }
    
    
    @IBOutlet weak var segmentedControlF: UISegmentedControl!
    
    @IBAction func fIndexChanged(_ sender: UISegmentedControl) {
        
        switch segmentedControlF.selectedSegmentIndex {
        case 0:
            fGrade.classType = "CP"
        case 1:
            fGrade.classType = "Honors"
        case 2:
            fGrade.classType = "AP"
        default:
            fGrade.classType = "CP"
        }
    }
    
    
    @IBOutlet weak var segmentedControlG: UISegmentedControl!
    
    
    @IBAction func gIndexChanged(_ sender: UISegmentedControl) {
        
        switch segmentedControlG.selectedSegmentIndex {
        case 0:
            gGrade.classType = "CP"
        case 1:
            gGrade.classType = "Honors"
        case 2:
            gGrade.classType = "AP"
        default:
            gGrade.classType = "CP"
        }
    }
    
    
    @IBOutlet weak var segmentedControlEigth: UISegmentedControl!
    
    
    @IBAction func eigthIndexChanged(_ sender: UISegmentedControl) {
        
        switch segmentedControlEigth.selectedSegmentIndex {
        case 0:
            eightGrade.classType = "CP"
        case 1:
            eightGrade.classType = "Honors"
        case 2:
            eightGrade.classType = "AP"
        default:
            eightGrade.classType = "CP"
        }

        
        
    }
   
    //END OF SEGMENTED CONTROL
    
    // Methods
    
    @IBOutlet weak var unweightedButtonOutlet: UIButton!
    
    var isGPAWeighted: Bool = true
    
    @IBAction func unweightedButton(_ sender: UIButton) {
        
        let defaults = UserDefaults.standard
        if isGPAWeighted == false {
            isGPAWeighted = true
            defaults.set(true, forKey: "isGPAWeighted")
            sender.setTitle("Weighted", for: .normal)
        } else {
            isGPAWeighted = false
            defaults.set(false, forKey: "isGPAWeighted")
            sender.setTitle("Unweighted", for: .normal)
        }
        
        print("isGPAWeighted = \(isGPAWeighted)")
        
       
        
        
    }
    
    
    
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
       
        Answers.logCustomEvent(withName: "GPA Calculated", customAttributes: ["Calulated": 2])
        
        
        
        if isGPAWeighted == false {
           aGrade.classType = "Unweighted"
            bGrade.classType = "Unweighted"
            cGrade.classType = "Unweighted"
            dGrade.classType = "Unweighted"
            eGrade.classType = "Unweighted"
            fGrade.classType = "Unweighted"
            gGrade.classType = "Unweighted"
            eightGrade.classType = "Unweighted"
        } else {
            
            
            if  segmentedControlA.selectedSegmentIndex == 0 {
                aGrade.classType = "CP"
            } else if segmentedControlA.selectedSegmentIndex == 1 {
                aGrade.classType = "Honors"
            } else {
                aGrade.classType = "AP"
            }
            
            if  segmentedControlB.selectedSegmentIndex == 0 {
                bGrade.classType = "CP"
            } else if segmentedControlB.selectedSegmentIndex == 1 {
                bGrade.classType = "Honors"
            } else {
                bGrade.classType = "AP"
            }
            
            if  segmentedControlC.selectedSegmentIndex == 0 {
                cGrade.classType = "CP"
            } else if segmentedControlC.selectedSegmentIndex == 1 {
                cGrade.classType = "Honors"
            } else {
                cGrade.classType = "AP"
            }
            
            if  segmentedControlC.selectedSegmentIndex == 0 {
                cGrade.classType = "CP"
            } else if segmentedControlC.selectedSegmentIndex == 1 {
                cGrade.classType = "Honors"
            } else {
                cGrade.classType = "AP"
            }
            
            if  segmentedControlD.selectedSegmentIndex == 0 {
                dGrade.classType = "CP"
            } else if segmentedControlD.selectedSegmentIndex == 1 {
                dGrade.classType = "Honors"
            } else {
                dGrade.classType = "AP"
            }
            
            if  segmentedControlE.selectedSegmentIndex == 0 {
                eGrade.classType = "CP"
            } else if segmentedControlE.selectedSegmentIndex == 1 {
                eGrade.classType = "Honors"
            } else {
                eGrade.classType = "AP"
            }
            
            if  segmentedControlF.selectedSegmentIndex == 0 {
                fGrade.classType = "CP"
            } else if segmentedControlF.selectedSegmentIndex == 1 {
                fGrade.classType = "Honors"
            } else {
                fGrade.classType = "AP"
            }
            
            
            if  segmentedControlG.selectedSegmentIndex == 0 {
                gGrade.classType = "CP"
            } else if segmentedControlG.selectedSegmentIndex == 1 {
                gGrade.classType = "Honors"
            } else {
                gGrade.classType = "AP"
            }
            
            if  segmentedControlEigth.selectedSegmentIndex == 0 {
                eightGrade.classType = "CP"
            } else if segmentedControlEigth.selectedSegmentIndex == 1 {
                eightGrade.classType = "Honors"
            } else {
                eightGrade.classType = "AP"
            }
            
        }
        
        

        //Core Animations for shaking
        var textFieldArray: [TextFieldAnimations] = [gradeABlock,gradeBBlock,gradeCBlock,gradeDBlock,gradeEBlock,gradeFBlock,gradeGBlock]
        
        if isThereAnAddedBlock == true {
            textFieldArray.append(eigthBlock)
            
            Answers.logCustomEvent(withName: "Calculated With an 8th Block", customAttributes: ["Calulated": 3])
            
        } else if textFieldArray.contains(eigthBlock) && isThereAnAddedBlock == false{
            textFieldArray.removeLast()
        }
        
        for textField in textFieldArray {
            if (textField.text?.isEmpty)! {
                textField.shake()
                textField.layer.borderColor = UIColor.red.cgColor
            } else {
                textField.layer.borderColor = segmentedControlA.tintColor.cgColor
            }
        }
        
       
        if isThereAnAddedBlock == false {
            
            
       if  (gradeABlock.text?.isEmpty)! || (gradeBBlock.text?.isEmpty)! || (gradeCBlock.text?.isEmpty)! || (gradeDBlock.text?.isEmpty)! || (gradeEBlock.text?.isEmpty)! || (gradeFBlock.text?.isEmpty)! || (gradeGBlock.text?.isEmpty)!  {
        
       print("value was nil")
        
       } else {
        
        switch alphabeticalGrades {
            case false:
                
        //For unwrapping purposes
        var a: Double = 0.00
        var aUnweighted: Double = 0.00
        
        var b: Double = 0.00
        var bUnweighted: Double = 0.00
        
        var c: Double = 0.00
        var cUnweighted: Double = 0.00
        
        var d: Double = 0.00
        var dUnweighted: Double = 0.00
        
        var e: Double = 0.00
        var eUnweighted: Double = 0.00
        
        var f: Double = 0.00
        var fUnweighted: Double = 0.00
        
        var g: Double = 0.00
        var gUnweighted: Double = 0.00
        
        
        
        if let newAGrade = Double(gradeABlock.text!) {
         aGrade.grade = newAGrade
            if aGrade.grade > 100 {
                gradeABlock.layer.borderColor = UIColor.red.cgColor
            } else {
                gradeABlock.layer.borderColor = segmentedControlA.tintColor.cgColor
            }
        }
        let duplicateAGrade: GPAGrades! = aGrade
         aGrade.calculateGradePoints()
         a = aGrade.gradePoints
        if aGrade.classType != "Unweighted" {
        duplicateAGrade.classType = "Unweighted"
            duplicateAGrade.calculateGradePoints()
            aUnweighted = duplicateAGrade.gradePoints
            print("\(aUnweighted)")
        }
        
        
        if let newBGrade = Double(gradeBBlock.text!){
        bGrade.grade = newBGrade
            if bGrade.grade > 100 {
                gradeBBlock.layer.borderColor = UIColor.red.cgColor
            } else {
                gradeBBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
            }
        }
        let duplicateBGrade: GPAGrades! = bGrade
         bGrade.calculateGradePoints()
         b = bGrade.gradePoints
        if bGrade.classType != "Unweighted" {
            duplicateBGrade.classType = "Unweighted"
            duplicateBGrade.calculateGradePoints()
            bUnweighted = duplicateBGrade.gradePoints
        }
        
        if let newCGrade = Double(gradeCBlock.text!) {
        cGrade.grade = newCGrade
            if cGrade.grade > 100 {
                gradeCBlock.layer.borderColor = UIColor.red.cgColor
            } else {
                gradeCBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
            }
        }
        let duplicateCGrade: GPAGrades! = cGrade
         cGrade.calculateGradePoints()
         c = cGrade.gradePoints
        if cGrade.classType != "Unweighted" {
            duplicateCGrade.classType = "Unweighted"
            duplicateCGrade.calculateGradePoints()
            cUnweighted = duplicateCGrade.gradePoints
        }

        
        if let newDGrade = Double(gradeDBlock.text!) {
        dGrade.grade = newDGrade
            if dGrade.grade > 100 {
                gradeDBlock.layer.borderColor = UIColor.red.cgColor
            } else {
                gradeDBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
            }
        }
        let duplicateDGrade: GPAGrades! = dGrade
         dGrade.calculateGradePoints()
         d = dGrade.gradePoints
        if dGrade.classType != "Unweighted" {
            duplicateDGrade.classType = "Unweighted"
            duplicateDGrade.calculateGradePoints()
            dUnweighted = duplicateDGrade.gradePoints
        }

        
        if let newEGrade = Double(gradeEBlock.text!) {
        eGrade.grade = newEGrade
            if eGrade.grade > 100 {
                gradeEBlock.layer.borderColor = UIColor.red.cgColor
            } else {
                gradeEBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
            }
        }
        let duplicateEGrade: GPAGrades! = eGrade
         eGrade.calculateGradePoints()
         e = eGrade.gradePoints
        if eGrade.classType != "Unweighted" {
            duplicateEGrade.classType = "Unweighted"
            duplicateEGrade.calculateGradePoints()
            eUnweighted = duplicateEGrade.gradePoints
        }

        
        if let newFGrade = Double(gradeFBlock.text!) {
        fGrade.grade = newFGrade
            if fGrade.grade > 100 {
                gradeFBlock.layer.borderColor = UIColor.red.cgColor
            } else {
                gradeFBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
            }
        }
        let duplicateFGrade: GPAGrades! = fGrade
         fGrade.calculateGradePoints()
         f = fGrade.gradePoints
        if fGrade.classType != "Unweighted" {
            duplicateFGrade.classType = "Unweighted"
            duplicateFGrade.calculateGradePoints()
            fUnweighted = duplicateFGrade.gradePoints
        }

       
        if let newGGrade = Double(gradeGBlock.text!) {
        gGrade.grade = newGGrade
            if gGrade.grade > 100 {
                gradeGBlock.layer.borderColor = UIColor.red.cgColor
            } else {
                gradeGBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
            }
        }
        let duplicateGGrade: GPAGrades! = gGrade
         gGrade.calculateGradePoints()
         g = gGrade.gradePoints
        if gGrade.classType != "Unweighted" {
            duplicateGGrade.classType = "Unweighted"
            duplicateGGrade.calculateGradePoints()
            gUnweighted = duplicateGGrade.gradePoints
        }

        if isGPAWeighted == true {
            
            duplicateFinalCalculatedGradePoints = (aUnweighted + bUnweighted + cUnweighted + dUnweighted + eUnweighted + fUnweighted + gUnweighted)
            let duplicateFinalCalculatedGPA = duplicateFinalCalculatedGradePoints / 7
            
            let defaults = UserDefaults.standard
            defaults.set("\(duplicateFinalCalculatedGPA)", forKey: "duplicateFinalGPAText")
            defaults.set(true, forKey: "isGPAWeighted")
        }
        
        finalCalculatedGradePoints = (a + b + c + d + e + f + g)
        
        let finalCalculatedGPA = finalCalculatedGradePoints / 7
        let personalizedGPA = numberFormatter.string(from: NSNumber(value: finalCalculatedGPA))
        finalGPA.text = "\(personalizedGPA!)"
        
        print("they didnt equal nil")
            
        let defaults = UserDefaults.standard
        defaults.set("\(finalCalculatedGPA)", forKey: "finalGPAText")
        
            default:
                
           Answers.logCustomEvent(withName: "GPA Calculated With Alphabetical Input", customAttributes: ["Calulated": 4])
           
                // unwrapping
           var a: Double = 0.00
           var aUnweighted: Double = 0.00
           
           var b: Double = 0.00
           var bUnweighted: Double = 0.00
           
           var c: Double = 0.00
           var cUnweighted: Double = 0.00
           
           var d: Double = 0.00
           var dUnweighted: Double = 0.00
           
           var e: Double = 0.00
           var eUnweighted: Double = 0.00
           
           var f: Double = 0.00
           var fUnweighted: Double = 0.00
           
           var g: Double = 0.00
           var gUnweighted: Double = 0.00
           
                
             
            
            if let newAGrade = String(gradeABlock.text!) {
                aGrade.alphabeticalGrade = newAGrade
            }
           
           let duplicateAGrade: GPAGrades! = aGrade
           duplicateAGrade.alphabeticalGrade = aGrade.alphabeticalGrade
            aGrade.calculateGradePoints()
            a = aGrade.alphabeticalGradePoints
           if aGrade.classType != "Unweighted" {
            duplicateAGrade.classType = "Unweighted"
            duplicateAGrade.calculateGradePoints()
            aUnweighted = duplicateAGrade.alphabeticalGradePoints
           }


            if let newBGrade = String(gradeBBlock.text!) {
                    bGrade.alphabeticalGrade = newBGrade
                }
           let duplicateBGrade: GPAGrades! = bGrade
                bGrade.calculateGradePoints()
                b = bGrade.alphabeticalGradePoints
           if bGrade.classType != "Unweighted" {
            duplicateBGrade.classType = "Unweighted"
            duplicateBGrade.calculateGradePoints()
            bUnweighted = duplicateBGrade.alphabeticalGradePoints
           }

            
                if let newCGrade = String(gradeCBlock.text!) {
                    cGrade.alphabeticalGrade = newCGrade
                }
           let duplicateCGrade: GPAGrades! = cGrade
                cGrade.calculateGradePoints()
                c = cGrade.alphabeticalGradePoints
           if cGrade.classType != "Unweighted" {
            duplicateCGrade.classType = "Unweighted"
            duplicateCGrade.calculateGradePoints()
            cUnweighted = duplicateCGrade.alphabeticalGradePoints
           }

            
                if let newDGrade = String(gradeDBlock.text!) {
                    dGrade.alphabeticalGrade = newDGrade
                }
           let duplicateDGrade: GPAGrades! = dGrade
                dGrade.calculateGradePoints()
                d = dGrade.alphabeticalGradePoints
           if dGrade.classType != "Unweighted" {
            duplicateDGrade.classType = "Unweighted"
            duplicateDGrade.calculateGradePoints()
            dUnweighted = duplicateDGrade.alphabeticalGradePoints
           }

            
                if let newEGrade = String(gradeEBlock.text!) {
                    eGrade.alphabeticalGrade = newEGrade
                }
           let duplicateEGrade: GPAGrades! = eGrade
                eGrade.calculateGradePoints()
                e = eGrade.alphabeticalGradePoints
           if eGrade.classType != "Unweighted" {
            duplicateEGrade.classType = "Unweighted"
            duplicateEGrade.calculateGradePoints()
            eUnweighted = duplicateEGrade.alphabeticalGradePoints
           }

            
                if let newFGrade = String(gradeFBlock.text!) {
                    fGrade.alphabeticalGrade = newFGrade
                }
           let duplicateFGrade: GPAGrades! = fGrade
                fGrade.calculateGradePoints()
                f = fGrade.alphabeticalGradePoints
           if fGrade.classType != "Unweighted" {
            duplicateFGrade.classType = "Unweighted"
            duplicateFGrade.calculateGradePoints()
            fUnweighted = duplicateFGrade.alphabeticalGradePoints
           }

            
                if let newGGrade = String(gradeGBlock.text!) {
                    gGrade.alphabeticalGrade = newGGrade
                }
           let duplicateGGrade: GPAGrades! = gGrade
                gGrade.calculateGradePoints()
                g = gGrade.alphabeticalGradePoints
           if gGrade.classType != "Unweighted" {
            duplicateGGrade.classType = "Unweighted"
            duplicateGGrade.calculateGradePoints()
            gUnweighted = duplicateGGrade.alphabeticalGradePoints
           }
           
           if isGPAWeighted == true {
            
            duplicateFinalCalculatedGradePoints = (aUnweighted + bUnweighted + cUnweighted + dUnweighted + eUnweighted + fUnweighted + gUnweighted)
            let duplicateFinalCalculatedGPA = duplicateFinalCalculatedGradePoints / 7
            
            let defaults = UserDefaults.standard
            defaults.set("\(duplicateFinalCalculatedGPA)", forKey: "duplicateFinalGPAText")
           }
            
                finalCalculatedGradePoints = (a + b + c + d + e + f + g)
                
                let finalCalculatedGPA = finalCalculatedGradePoints / 7
                let personalizedGPA = numberFormatter.string(from: NSNumber(value: finalCalculatedGPA))
                finalGPA.text = "\(personalizedGPA!)"
                
                print("they didnt equal nil")
            
           let defaults = UserDefaults.standard
           defaults.set("\(finalCalculatedGPA)", forKey: "finalGPAText")

        }
    }
        
        } else {
           
            if  (gradeABlock.text?.isEmpty)! || (gradeBBlock.text?.isEmpty)! || (gradeCBlock.text?.isEmpty)! || (gradeDBlock.text?.isEmpty)! || (gradeEBlock.text?.isEmpty)! || (gradeFBlock.text?.isEmpty)! || (gradeGBlock.text?.isEmpty)! || (eigthBlock.text?.isEmpty)!  {
                
                print("value was nil")
                
            } else {
                
                switch alphabeticalGrades {
                case false:
                    
                    //For unwrapping purposes
                    var a: Double = 0.00
                    var aUnweighted: Double = 0.00
                    
                    var b: Double = 0.00
                    var bUnweighted: Double = 0.00
                    
                    var c: Double = 0.00
                    var cUnweighted: Double = 0.00
                    
                    var d: Double = 0.00
                    var dUnweighted: Double = 0.00
                    
                    var e: Double = 0.00
                    var eUnweighted: Double = 0.00
                    
                    var f: Double = 0.00
                    var fUnweighted: Double = 0.00
                    
                    var g: Double = 0.00
                    var gUnweighted: Double = 0.00
                    
                    var o: Double = 0.00
                    var oUnweighted: Double = 0.00
                    
                    
                    
                    if let newAGrade = Double(gradeABlock.text!) {
                        aGrade.grade = newAGrade
                        if aGrade.grade > 100 {
                            gradeABlock.layer.borderColor = UIColor.red.cgColor
                        } else {
                            gradeABlock.layer.borderColor = segmentedControlA.tintColor.cgColor
                        }
                    }
                    let duplicateAGrade: GPAGrades! = aGrade
                    aGrade.calculateGradePoints()
                    a = aGrade.gradePoints
                    if aGrade.classType != "Unweighted" {
                        duplicateAGrade.classType = "Unweighted"
                        duplicateAGrade.calculateGradePoints()
                        aUnweighted = duplicateAGrade.gradePoints
                    }
                    
                    
                    if let newBGrade = Double(gradeBBlock.text!){
                        bGrade.grade = newBGrade
                        if bGrade.grade > 100 {
                            gradeBBlock.layer.borderColor = UIColor.red.cgColor
                        } else {
                            gradeBBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
                        }
                    }
                    let duplicateBGrade: GPAGrades! = bGrade
                    bGrade.calculateGradePoints()
                    b = bGrade.gradePoints
                    if bGrade.classType != "Unweighted" {
                        duplicateBGrade.classType = "Unweighted"
                        duplicateBGrade.calculateGradePoints()
                        bUnweighted = duplicateBGrade.gradePoints
                    }
                    
                    if let newCGrade = Double(gradeCBlock.text!) {
                        cGrade.grade = newCGrade
                        if cGrade.grade > 100 {
                            gradeCBlock.layer.borderColor = UIColor.red.cgColor
                        } else {
                            gradeCBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
                        }
                    }
                    let duplicateCGrade: GPAGrades! = cGrade
                    cGrade.calculateGradePoints()
                    c = cGrade.gradePoints
                    if cGrade.classType != "Unweighted" {
                        duplicateCGrade.classType = "Unweighted"
                        duplicateCGrade.calculateGradePoints()
                        cUnweighted = duplicateCGrade.gradePoints
                    }
                    
                    if let newDGrade = Double(gradeDBlock.text!) {
                        dGrade.grade = newDGrade
                        if dGrade.grade > 100 {
                            gradeDBlock.layer.borderColor = UIColor.red.cgColor
                        } else {
                            gradeDBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
                        }
                    }
                    let duplicateDGrade: GPAGrades! = dGrade
                    dGrade.calculateGradePoints()
                    d = dGrade.gradePoints
                    if dGrade.classType != "Unweighted" {
                        duplicateDGrade.classType = "Unweighted"
                        duplicateDGrade.calculateGradePoints()
                        dUnweighted = duplicateDGrade.gradePoints
                    }
                    
                    if let newEGrade = Double(gradeEBlock.text!) {
                        eGrade.grade = newEGrade
                        if eGrade.grade > 100 {
                            gradeEBlock.layer.borderColor = UIColor.red.cgColor
                        } else {
                            gradeEBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
                        }
                    }
                    let duplicateEGrade: GPAGrades! = eGrade
                    eGrade.calculateGradePoints()
                    e = eGrade.gradePoints
                    if eGrade.classType != "Unweighted" {
                        duplicateEGrade.classType = "Unweighted"
                        duplicateEGrade.calculateGradePoints()
                        eUnweighted = duplicateEGrade.gradePoints
                    }
                    
                    if let newFGrade = Double(gradeFBlock.text!) {
                        fGrade.grade = newFGrade
                        if fGrade.grade > 100 {
                            gradeFBlock.layer.borderColor = UIColor.red.cgColor
                        } else {
                            gradeFBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
                        }
                    }
                    let duplicateFGrade: GPAGrades! = fGrade
                    fGrade.calculateGradePoints()
                    f = fGrade.gradePoints
                    if fGrade.classType != "Unweighted" {
                        duplicateFGrade.classType = "Unweighted"
                        duplicateFGrade.calculateGradePoints()
                        fUnweighted = duplicateFGrade.gradePoints
                    }
                    
                    if let newGGrade = Double(gradeGBlock.text!) {
                        gGrade.grade = newGGrade
                        if gGrade.grade > 100 {
                            gradeGBlock.layer.borderColor = UIColor.red.cgColor
                        } else {
                            gradeGBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
                        }
                    }
                    let duplicateGGrade: GPAGrades! = gGrade
                    gGrade.calculateGradePoints()
                    g = gGrade.gradePoints
                    if gGrade.classType != "Unweighted" {
                        duplicateGGrade.classType = "Unweighted"
                        duplicateGGrade.calculateGradePoints()
                        gUnweighted = duplicateGGrade.gradePoints
                    }
                    
                    if let newOGrade = Double(eigthBlock.text!) {
                        eightGrade.grade = newOGrade
                        if aGrade.grade > 100 {
                            eigthBlock.layer.borderColor = UIColor.red.cgColor
                        } else {
                            eigthBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
                        }
                    }
                    let duplicateOGrade: GPAGrades! = eightGrade
                    eightGrade.calculateGradePoints()
                    o = eightGrade.gradePoints
                    if eightGrade.classType != "Unweighted" {
                        duplicateOGrade.classType = "Unweighted"
                        duplicateOGrade.calculateGradePoints()
                        oUnweighted = duplicateOGrade.gradePoints
                    }

                    if isGPAWeighted == true {
                        
                        duplicateFinalCalculatedGradePoints = (aUnweighted + bUnweighted + cUnweighted + dUnweighted + eUnweighted + fUnweighted + gUnweighted + oUnweighted)
                        let duplicateFinalCalculatedGPA = duplicateFinalCalculatedGradePoints / 8
                        
                        let defaults = UserDefaults.standard
                        defaults.set("\(duplicateFinalCalculatedGPA)", forKey: "duplicateFinalGPAText")
                    }
                    
                    
                    finalCalculatedGradePoints = (a + b + c + d + e + f + g + o)
                    
                    let finalCalculatedGPA = finalCalculatedGradePoints / 8
                    let personalizedGPA = numberFormatter.string(from: NSNumber(value: finalCalculatedGPA))
                    finalGPA.text = "\(personalizedGPA!)"
                    
                    print("they didnt equal nil")
                    
                    let defaults = UserDefaults.standard
                    defaults.set("\(finalCalculatedGPA)", forKey: "finalGPAText")
                    
                default:
                    
                    
                    // unwrapping
                    var a: Double = 0.00
                    var aUnweighted: Double = 0.00
                    
                    var b: Double = 0.00
                    var bUnweighted: Double = 0.00
                    
                    var c: Double = 0.00
                    var cUnweighted: Double = 0.00
                    
                    var d: Double = 0.00
                    var dUnweighted: Double = 0.00
                    
                    var e: Double = 0.00
                    var eUnweighted: Double = 0.00
                    
                    var f: Double = 0.00
                    var fUnweighted: Double = 0.00
                    
                    var g: Double = 0.00
                    var gUnweighted: Double = 0.00
                    
                    var o: Double = 0.00
                    var oUnweighted: Double = 0.00
                    

                    
                    
                    
                    if let newAGrade = String(gradeABlock.text!) {
                        aGrade.alphabeticalGrade = newAGrade
                    }
                    let duplicateAGrade: GPAGrades! = aGrade
                    aGrade.calculateGradePoints()
                    a = aGrade.alphabeticalGradePoints
                    if aGrade.classType != "Unweighted" {
                        duplicateAGrade.classType = "Unweighted"
                        duplicateAGrade.calculateGradePoints()
                        aUnweighted = duplicateAGrade.alphabeticalGradePoints
                    }
                    
                    if let newBGrade = String(gradeBBlock.text!) {
                        bGrade.alphabeticalGrade = newBGrade
                    }
                    let duplicateBGrade: GPAGrades! = bGrade
                    bGrade.calculateGradePoints()
                    b = bGrade.alphabeticalGradePoints
                    if bGrade.classType != "Unweighted" {
                        duplicateBGrade.classType = "Unweighted"
                        duplicateBGrade.calculateGradePoints()
                        bUnweighted = duplicateBGrade.alphabeticalGradePoints
                    }
                    
                    if let newCGrade = String(gradeCBlock.text!) {
                        cGrade.alphabeticalGrade = newCGrade
                    }
                    let duplicateCGrade: GPAGrades! = cGrade
                    cGrade.calculateGradePoints()
                    c = cGrade.alphabeticalGradePoints
                    if cGrade.classType != "Unweighted" {
                        duplicateCGrade.classType = "Unweighted"
                        duplicateCGrade.calculateGradePoints()
                        cUnweighted = duplicateCGrade.alphabeticalGradePoints
                    }
                    
                    if let newDGrade = String(gradeDBlock.text!) {
                        dGrade.alphabeticalGrade = newDGrade
                    }
                    let duplicateDGrade: GPAGrades! = dGrade
                    dGrade.calculateGradePoints()
                    d = dGrade.alphabeticalGradePoints
                    if dGrade.classType != "Unweighted" {
                        duplicateDGrade.classType = "Unweighted"
                        duplicateDGrade.calculateGradePoints()
                        dUnweighted = duplicateDGrade.alphabeticalGradePoints
                    }
                    
                    if let newEGrade = String(gradeEBlock.text!) {
                        eGrade.alphabeticalGrade = newEGrade
                    }
                    let duplicateEGrade: GPAGrades! = eGrade
                    eGrade.calculateGradePoints()
                    e = eGrade.alphabeticalGradePoints
                    if eGrade.classType != "Unweighted" {
                        duplicateEGrade.classType = "Unweighted"
                        duplicateEGrade.calculateGradePoints()
                        eUnweighted = duplicateEGrade.alphabeticalGradePoints
                    }
                    
                    if let newFGrade = String(gradeFBlock.text!) {
                        fGrade.alphabeticalGrade = newFGrade
                    }
                    let duplicateFGrade: GPAGrades! = fGrade
                    fGrade.calculateGradePoints()
                    f = fGrade.alphabeticalGradePoints
                    if fGrade.classType != "Unweighted" {
                        duplicateFGrade.classType = "Unweighted"
                        duplicateFGrade.calculateGradePoints()
                        fUnweighted = duplicateFGrade.alphabeticalGradePoints
                    }
                    
                    if let newGGrade = String(gradeGBlock.text!) {
                        gGrade.alphabeticalGrade = newGGrade
                    }
                    let duplicateGGrade: GPAGrades! = gGrade
                    gGrade.calculateGradePoints()
                    g = gGrade.alphabeticalGradePoints
                    if gGrade.classType != "Unweighted" {
                        duplicateGGrade.classType = "Unweighted"
                        duplicateGGrade.calculateGradePoints()
                        gUnweighted = duplicateGGrade.alphabeticalGradePoints
                    }
                    
                    if let newOGrade = String(eigthBlock.text!) {
                        eightGrade.alphabeticalGrade = newOGrade
                    }
                    let duplicateOGrade: GPAGrades! = eightGrade
                    eightGrade.calculateGradePoints()
                    o = eightGrade.alphabeticalGradePoints
                    if eightGrade.classType != "Unweighted" {
                        duplicateOGrade.classType = "Unweighted"
                        duplicateOGrade.calculateGradePoints()
                        oUnweighted = duplicateOGrade.alphabeticalGradePoints
                    }
                    
                    if isGPAWeighted == true {
                        
                        duplicateFinalCalculatedGradePoints = (aUnweighted + bUnweighted + cUnweighted + dUnweighted + eUnweighted + fUnweighted + gUnweighted + oUnweighted)
                        let duplicateFinalCalculatedGPA = duplicateFinalCalculatedGradePoints / 8
                        
                        let defaults = UserDefaults.standard
                        defaults.set("\(duplicateFinalCalculatedGPA)", forKey: "duplicateFinalGPAText")
                        
                    }

                    
                    finalCalculatedGradePoints = (a + b + c + d + e + f + g + o)
                    
                    let finalCalculatedGPA = finalCalculatedGradePoints / 8
                    let personalizedGPA = numberFormatter.string(from: NSNumber(value: finalCalculatedGPA))
                    finalGPA.text = "\(personalizedGPA!)"
                    
                    print("they didnt equal nil")
                    
                    let defaults = UserDefaults.standard
                    defaults.set("\(finalCalculatedGPA)", forKey: "finalGPAText")
                }
            }

        }
        
        
        
        
        
        
    }
    
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        
        
        let defaults = UserDefaults.standard
        defaults.set("", forKey: "finalGPAText")
        defaults.set("", forKey: "duplicateFinalGPAText")
        
        
        previousGPAInput.text = "Previous GPA: \(finalGPA.text!)"
        finalGPA.text = "GPA"
        gradeABlock.text = ""
        gradeBBlock.text = ""
        gradeCBlock.text = ""
        gradeDBlock.text = ""
        gradeEBlock.text = ""
        gradeFBlock.text = ""
        gradeGBlock.text = ""
            if isThereAnAddedBlock == true {
        eigthBlock.text = ""
        }
        
        //if finalGPA.text == "GPA" {
         //   previousGPAInput.text = "Previously Calculated GPA"
      //  }
            if previousGPAInput.text == "Previous GPA: \(finalGPA.text!)" {
            previousGPAInput.text = "Previously Calculated GPA"
        }
        
        gradeABlock.layer.borderColor = segmentedControlA.tintColor.cgColor
        gradeBBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
        gradeCBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
        gradeDBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
        gradeEBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
        gradeFBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
        gradeGBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
            if isThereAnAddedBlock == true {
        eigthBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
        }
        
        
        if appTitle.alpha < 1 {
            
                    
                    UIView.animate(withDuration: 0.5, delay: 0.00, options: .curveEaseOut, animations: {
                        
                        self.appTitle.frame.origin.y += 100
                        self.addABlockLabel.frame.origin.y += 100
                        self.alphaVSNumericalSegmentedControl.frame.origin.y += 100
                        self.shareButtonLabel.frame.origin.y += 100
                        /*
                        self.aBlockLabel.frame.origin.y += 60
                        self.bBlockLabel.frame.origin.y += 60
                        self.cBlockLabel.frame.origin.y += 60
                        self.dBlockLabel.frame.origin.y += 60
                        self.eBlockLabel.frame.origin.y += 60
                        self.fBlockLabel.frame.origin.y += 60
                        self.gBlockLabel.frame.origin.y += 60
                        self.eigthBlockLabel.frame.origin.y += 60
                        self.gradeABlock.frame.origin.y += 60
                        self.gradeBBlock.frame.origin.y += 60
                        self.gradeCBlock.frame.origin.y += 60
                        self.gradeDBlock.frame.origin.y += 60
                        self.gradeEBlock.frame.origin.y += 60
                        self.gradeFBlock.frame.origin.y += 60
                        self.gradeGBlock.frame.origin.y += 60
                        self.eigthBlock.frame.origin.y += 60
                        
                        self.segmentedControlA.frame.origin.y += 60
                        self.segmentedControlB.frame.origin.y += 60
                        self.segmentedControlC.frame.origin.y += 60
                        self.segmentedControlD.frame.origin.y += 60
                        self.segmentedControlE.frame.origin.y += 60
                        self.segmentedControlF.frame.origin.y += 60
                        self.segmentedControlG.frame.origin.y += 60
                        self.segmentedControlEigth.frame.origin.y += 60
                        */
                        self.allTextFieldsView.frame.origin.y += (self.view.frame.height * 0.09)
                    } , completion: { finished in print("hi")
                        
                        self.keyboardIsUP = false
                        
                        UIView.animate(withDuration: 0.1) {
                            self.appTitle.alpha = 1.0
                        }
                        UIView.animate(withDuration: 0.1) {
                            self.addABlockLabel.alpha = 1.0
                        }
                        UIView.animate(withDuration: 0.1) {
                            self.alphaVSNumericalSegmentedControl.alpha = 1.0
                        }
                        UIView.animate(withDuration: 0.1) {
                            self.shareButtonLabel.alpha = 1.0
                        }
                        
                        
                    })
                }
                
        
        
                
            }
            
            
            
    
    @IBAction func shareButtonPressed(_ sender: UIButton) {
        
        //no keyboards
        gradeABlock.resignFirstResponder()
        gradeBBlock.resignFirstResponder()
        gradeCBlock.resignFirstResponder()
        gradeDBlock.resignFirstResponder()
        gradeEBlock.resignFirstResponder()
        gradeFBlock.resignFirstResponder()
        gradeGBlock.resignFirstResponder()
        eigthBlock.resignFirstResponder()

        
        
        //alert
        let alert = UIAlertController(title: "Share", message: "Share your GPA!", preferredStyle: .actionSheet)
        
        
        //alert action
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        
        let twitterAction = UIAlertAction(title: "Share on Twitter", style: .default) { (action) in
            print("Success")
        

            
            //Check to see if user is connected to Twitter
        if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeTwitter) {
            
            let post = SLComposeViewController(forServiceType: SLServiceTypeTwitter)!
            
            var numberFinalGPA = Double()
            
            if let number = Double(self.finalGPA.text!) {
                numberFinalGPA = number
            }
            
            
            if  (self.gradeABlock.text?.isEmpty)! || (self.gradeBBlock.text?.isEmpty)! || (self.gradeCBlock.text?.isEmpty)! || (self.gradeDBlock.text?.isEmpty)! || (self.gradeEBlock.text?.isEmpty)! || (self.gradeFBlock.text?.isEmpty)! || (self.gradeGBlock.text?.isEmpty)! {
               post.setInitialText("I just calculated my grade point average using the SHPGPA app")
            } else {
            switch numberFinalGPA {
                
            case 0.0...1.5:
                post.setInitialText("Welp, looks like I'm not going college with this \(self.finalGPA.text!) GPA ~ via SHPGPA app")
                
            case 1.5...2.75:
                post.setInitialText("County College here I come with this \(self.finalGPA.text!) GPA ~ via SHPGPA app")
                
            default:
                post.setInitialText("I just calculated my \(self.finalGPA.text!) GPA using the SHPGPA app")
                }
                
            }
            
            
            
            self.present(post, animated: true, completion: nil)
            
            
        } else {
            self.showAlert(service: "Twitter")
            }
        }
        
    
        
        //add to actionsheet
       alert.addAction(twitterAction)
    
        alert.addAction(cancelAction)
        
        self.present(alert, animated: true, completion: nil)
        
        
        
        
    }
        
    func showAlert(service: String) {
        
        let alert = UIAlertController(title: "Error", message: "You are not connected to \(service)", preferredStyle: .alert)
        let action = UIAlertAction(title: "Dismiss", style: .cancel, handler: nil)
        
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }


    
  
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        gradeABlock.resignFirstResponder()
        gradeBBlock.resignFirstResponder()
        gradeCBlock.resignFirstResponder()
        gradeDBlock.resignFirstResponder()
        gradeEBlock.resignFirstResponder()
        gradeFBlock.resignFirstResponder()
        gradeGBlock.resignFirstResponder()
        eigthBlock.resignFirstResponder()


    }

    @IBAction func pageControllerSwitchVC(_ sender: pageControllers) {
        self.performSegue(withIdentifier: "toTrimesterVC", sender: self)
    }
    
    @IBAction func dataChartButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "2Info", sender: self)
    }
    
    
    @IBAction func swipedLeft(gesture: UISwipeGestureRecognizer) {
        print("swipedLeft")
        self.performSegue(withIdentifier: "toTrimesterVC", sender: self)
        
    }
    
    @IBAction func swipedRight(gesture: UISwipeGestureRecognizer) {
        print("swiped Right")
        self.performSegue(withIdentifier: "2Info", sender: self)
    }
    
    @IBAction func unwindToVC(segue: UIStoryboardSegue) {
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
print("viewloaded")
        
        if finalGPA.text == "GPA" {
            
        let defaults = UserDefaults.standard
        defaults.set("", forKey: "finalGPAText")
        defaults.set("", forKey: "duplicateFinalGPAText")
        }
        
        if unweightedButtonOutlet!.titleLabel?.text! == "Weighted" {
            isGPAWeighted = true
            let defaults = UserDefaults.standard
            defaults.set(true, forKey: "isGPAWeighted")
        } else {
            isGPAWeighted = false
            let defaults = UserDefaults.standard
            defaults.set(false, forKey: "isGPAWeighted")
        }
        
     let font = UIFont.systemFont(ofSize: 22.0)
        minusTabButtonLabel.setTitleTextAttributes([NSFontAttributeName: font], for: .normal)
        tabPlusOutlet.setTitleTextAttributes([NSFontAttributeName: font], for: .normal)
        
        
        
        
        
        alphaVSNumericalSegmentedControl.selectedSegmentIndex = 0
        keyboardIsUP = false
        alphabeticalToolBar.isHidden = false
        alphabeticalGrades = true
        
        segmentedControlEigth.isHidden = true
        eigthBlock.isHidden = true
        eigthBlockLabel.isHidden = true
        
       
        let appTitleBorderedText = NSAttributedString(string: appTitle.text!, attributes: [
            NSStrokeColorAttributeName : segmentedControlA.tintColor,
            NSForegroundColorAttributeName : UIColor.white,
            NSStrokeWidthAttributeName : -8.0
            ])
        
        appTitle.attributedText = appTitleBorderedText
        
     
        activeTextField = gradeABlock
        
       /*
        if alphabeticalGrades! {
        alphabeticalToolBar.isHidden = false
        } else {
            alphabeticalToolBar.isHidden = true
        }
        */
        
        if alphabeticalGrades == true {
            
            
            //makes keyboard not appear when in alphabetical tab mode
            gradeABlock.inputView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
            gradeBBlock.inputView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
            gradeCBlock.inputView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
            gradeDBlock.inputView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
            gradeEBlock.inputView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
            gradeFBlock.inputView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
            gradeGBlock.inputView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
            eigthBlock.inputView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        }
        
        //For Core Animations
        gradeABlock.delegate = self
        gradeBBlock.delegate = self
        gradeCBlock.delegate = self
        gradeDBlock.delegate = self
        gradeEBlock.delegate = self
        gradeFBlock.delegate = self
        gradeGBlock.delegate = self
        eigthBlock.delegate = self
        
        
        
        segmentedControlA.selectedSegmentIndex = 0
        segmentedControlB.selectedSegmentIndex = 0
        segmentedControlC.selectedSegmentIndex = 0
        segmentedControlD.selectedSegmentIndex = 0
        segmentedControlE.selectedSegmentIndex = 0
        segmentedControlF.selectedSegmentIndex = 0
        segmentedControlG.selectedSegmentIndex = 0
        segmentedControlEigth.selectedSegmentIndex = 0
        
        //border around textfields
        
        self.gradeABlock.borderStyle = .roundedRect
        self.gradeABlock.layer.borderColor = segmentedControlA.tintColor.cgColor
        self.gradeABlock.layer.borderWidth = 2.0
        self.gradeABlock.layer.cornerRadius = 9
        self.gradeABlock.backgroundColor = UIColor.clear
        
        self.gradeBBlock.borderStyle = .roundedRect
        self.gradeBBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
        self.gradeBBlock.layer.borderWidth = 2.0
        self.gradeBBlock.layer.cornerRadius = 9
        self.gradeBBlock.backgroundColor = UIColor.clear
        
        self.gradeCBlock.borderStyle = .roundedRect
        self.gradeCBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
        self.gradeCBlock.layer.borderWidth = 2.0
        self.gradeCBlock.layer.cornerRadius = 9
        self.gradeCBlock.backgroundColor = UIColor.clear
        
        self.gradeDBlock.borderStyle = .roundedRect
        self.gradeDBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
        self.gradeDBlock.layer.borderWidth = 2.0
        self.gradeDBlock.layer.cornerRadius = 9
        self.gradeDBlock.backgroundColor = UIColor.clear
        
        self.gradeEBlock.borderStyle = .roundedRect
        self.gradeEBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
        self.gradeEBlock.layer.borderWidth = 2.0
        self.gradeEBlock.layer.cornerRadius = 9
        self.gradeEBlock.backgroundColor = UIColor.clear
        
        self.gradeFBlock.borderStyle = .roundedRect
        self.gradeFBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
        self.gradeFBlock.layer.borderWidth = 2.0
        self.gradeFBlock.layer.cornerRadius = 9
        self.gradeFBlock.backgroundColor = UIColor.clear
        
        self.gradeGBlock.borderStyle = .roundedRect
        self.gradeGBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
        self.gradeGBlock.layer.borderWidth = 2.0
        self.gradeGBlock.layer.cornerRadius = 9
        self.gradeGBlock.backgroundColor = UIColor.clear
        
        self.eigthBlock.borderStyle = .roundedRect
        self.eigthBlock.layer.borderColor = segmentedControlA.tintColor.cgColor
        self.eigthBlock.layer.borderWidth = 2.0
        self.eigthBlock.layer.cornerRadius = 9
        self.eigthBlock.backgroundColor = UIColor.clear

        
        
        
        //placeholder
    
        
        let placeholder = NSAttributedString(string: "Grade", attributes: [NSForegroundColorAttributeName: UIColor.gray])
      //Dont Need anymore...placeholder text for labels
        // let finalGPAPlaceholder = NSAttributedString(string: "GPA", attributes: [NSForegroundColorAttributeName: UIColor.lightText])
      //  let previousGPAPlaceholder = NSAttributedString(string: "Previous GPA", attributes: [NSForegroundColorAttributeName: UIColor.lightText])
    
      
        
        gradeABlock.attributedPlaceholder = placeholder
        gradeBBlock.attributedPlaceholder = placeholder
        gradeCBlock.attributedPlaceholder = placeholder
        gradeDBlock.attributedPlaceholder = placeholder
        gradeEBlock.attributedPlaceholder = placeholder
        gradeFBlock.attributedPlaceholder = placeholder
        gradeGBlock.attributedPlaceholder = placeholder
        eigthBlock.attributedPlaceholder = placeholder
      
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        
        
        
    }
    
    
    
    
    
    

}



extension UITextField {
    
    //Not Currently Used
    @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSForegroundColorAttributeName: newValue!])
        }
    }

    }

