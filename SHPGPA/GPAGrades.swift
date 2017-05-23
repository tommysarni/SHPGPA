//
//  CalculatingGPA.swift
//  SHPGPA
//
//  Created by Tommy Sarni on 2/22/17.
//  Copyright © 2017 SHP. All rights reserved.
//

import Foundation

class GPAGrades: StoredGrades {
    
    //property
    
    var grade: Double!
    var alphabeticalGrade: String!
    var alphabeticalGradePoints: Double!
    var classType: String! = "CP"
    var gradePoints: Double!
  
    // methods
    
    
    func calculateGradePoints()  {
        
        //For alphabet grade
        
        if alphabeticalGrade != nil {
           
            if classType == "CP" {
                
                switch alphabeticalGrade {
                
                    case "A+":
                    alphabeticalGradePoints = APlusForCP
                    
                    case "A":
                    alphabeticalGradePoints = AForCP
                    
                    case "A-":
                    alphabeticalGradePoints = AMinusForCP
                    
                    case "B+":
                    alphabeticalGradePoints = BPlusForCP
                    
                    case "B":
                    alphabeticalGradePoints = BForCP
                    
                    case "B-":
                    alphabeticalGradePoints = BMinusForCP
                    
                    case "C+":
                    alphabeticalGradePoints = CPlusForCP
                    
                    case "C":
                        alphabeticalGradePoints = CForCP
                    
                    case "C-":
                        alphabeticalGradePoints = CMinusForCP
                    
                    case "D+":
                        alphabeticalGradePoints = DPlusForCP
                    
                    case "D":
                    alphabeticalGradePoints = DForCP
                    
                default:
                    alphabeticalGradePoints = FForCP
                }
                } else if classType == "Honors" {
                    
                    switch alphabeticalGrade {
                        
                    case "A+":
                        alphabeticalGradePoints = APlusForHonors
                        
                    case "A":
                        alphabeticalGradePoints = AForHonors
                    
                    case "A-":
                        alphabeticalGradePoints = AMinusForHonors
                        
                    case "B+":
                        alphabeticalGradePoints = BPlusForHonors
                        
                    case "B":
                        alphabeticalGradePoints = BForHonors
                        
                    case "B-":
                        alphabeticalGradePoints = BMinusForHonors
                        
                    case "C+":
                        alphabeticalGradePoints = CPlusForHonors
                    
                    case "C":
                        alphabeticalGradePoints = CForHonors
                        
                    case "C-":
                        alphabeticalGradePoints = CMinusForHonors
                        
                    case "D+":
                        alphabeticalGradePoints = DPlusForHonors
                        
                    case "D":
                        alphabeticalGradePoints = DForHonors
                        
                    default:
                        alphabeticalGradePoints = FForHonors
                }
                    } else if classType == "AP"{
                        
                        switch alphabeticalGrade {
                            
                        case "A+":
                            alphabeticalGradePoints = APlusForAP
                            
                        case "A":
                            alphabeticalGradePoints = AForAP
                            
                        case "A-":
                            alphabeticalGradePoints = AMinusForAP
                            
                        case "B+":
                            alphabeticalGradePoints = BPlusForAP
                            
                        case "B":
                            alphabeticalGradePoints = BForAP
                            
                        case "B-":
                            alphabeticalGradePoints = BMinusForAP
                            
                        case "C+":
                            alphabeticalGradePoints = CPlusForAP
                            
                        case "C":
                            alphabeticalGradePoints = CForAP
                            
                        case "C-":
                            alphabeticalGradePoints = CMinusForAP
                            
                        case "D+":
                            alphabeticalGradePoints = DPlusForAP
                            
                        case "D":
                            alphabeticalGradePoints = DForAP
                            
                        default:
                            alphabeticalGradePoints = FForAP
                }
            } else {
                
                switch alphabeticalGrade {
                    
                case "A+":
                    alphabeticalGradePoints = APlusForUnweighted
                    
                case "A":
                    alphabeticalGradePoints = AForUnweighted
                    
                case "A-":
                    alphabeticalGradePoints = AMinusForUnweighted
                    
                case "B+":
                    alphabeticalGradePoints = BPlusForUnweighted
                    
                case "B":
                    alphabeticalGradePoints = BForUnweighted
                    
                case "B-":
                    alphabeticalGradePoints = BMinusForUnweighted
                    
                case "C+":
                    alphabeticalGradePoints = CPlusForUnweighed
                    
                case "C":
                    alphabeticalGradePoints = CForUnweighted
                    
                case "C-":
                    alphabeticalGradePoints = CMinusForUnweighted
                    
                case "D+":
                    alphabeticalGradePoints = DPlusForUnweighted
                    
                case "D":
                    alphabeticalGradePoints = DForUnweighted
                    
                default:
                    alphabeticalGradePoints = FForUnweighted
                    
                }
                
            }
            
            
        
            }
        
        
        // For Number Grade
        
if grade != nil {
    
        if classType == "CP" {
                switch  grade {
                case 95.0...100.00:
                    grade = APlusForCP
                    
                case 90.0..<95.0:
                    grade = AForCP
                
                case 85.00..<90.0:
                    grade = BPlusForCP
                    
                case 80.00..<85.00:
                    grade = BForCP
                
                case 75.00..<80.00:
                    grade = CPlusForCP
                
                case 70.00..<75.00:
                    grade = CForCP
                
                case 65.00..<70.0:
                    grade = DForCP
                    
                default:
                    grade = FForCP
                    
               
                }
        } else if classType == "Honors" {
                    
                    switch  grade {
                    case 95.0...100.00:
                        grade = APlusForHonors
                        
                    case 90.0..<95.0:
                        grade = AForHonors
                        
                    case 85.0..<90.0:
                        grade = BPlusForHonors
                        
                    case 80.0..<85.00:
                        grade = BForHonors
                        
                    case 75.0..<80.00:
                        grade = CPlusForHonors
                        
                    case 70.0..<75.00:
                        grade = CForHonors
                        
                    case 65.00..<70.0:
                        grade = DForHonors
                        
                        
                    default:
                        grade = FForHonors
                
                    }
  
        } else if classType == "AP" {
        switch  grade {
        case 95.0...100.00:
            grade = APlusForAP
            
        case 90.0..<95.0:
            grade = AForAP
            
        case 85.0..<90.0:
            grade = BPlusForAP
            
        case 80.0..<85.0:
            grade = BForAP
            
        case 75.00..<80.0:
            grade = CPlusForAP
            
        case 70.00..<75.0:
            grade = CForAP
            
        case 65.0..<70.0:
            grade = DForAP
            
        default:
            grade = FForAP
            
                }
        } else {
            switch grade {
                case 97...100:
                grade = APlusForUnweighted
            
            case 93..<97:
                grade = AForUnweighted
                
            case 90..<93:
                grade = AMinusForUnweighted
                
            case 87..<90:
                grade = BPlusForUnweighted
                
            case 83..<87:
                grade = BForUnweighted
                
            case 80..<83:
                grade = BMinusForUnweighted
                
            case 77..<80:
                grade = CPlusForUnweighed
                
            case 73..<77:
                grade = CForUnweighted
                
            case 70..<73:
                grade = CMinusForUnweighted
                
            case 67..<70:
                grade = DPlusForUnweighted
                
            case 65..<67:
                grade = DForUnweighted
                
            default:
                grade = FForUnweighted
                
            }
            
            
            
            
    }
    gradePoints = grade
        }
        
    }
}


