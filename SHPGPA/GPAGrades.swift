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
                    
                    case "B+":
                    alphabeticalGradePoints = BPlusForCP
                    
                    case "B":
                    alphabeticalGradePoints = BForCP
                    
                    case "C+":
                    alphabeticalGradePoints = CPlusForCP
                    
                    case "C":
                        alphabeticalGradePoints = CForCP
                    
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
                        
                    case "B+":
                        alphabeticalGradePoints = BPlusForHonors
                        
                    case "B":
                        alphabeticalGradePoints = BForHonors
                        
                    case "C+":
                        alphabeticalGradePoints = CPlusForHonors
                    
                    case "C":
                        alphabeticalGradePoints = CForHonors
                        
                    case "D":
                        alphabeticalGradePoints = DForHonors
                        
                    default:
                        alphabeticalGradePoints = FForHonors
                }
                    } else {
                        
                        switch alphabeticalGrade {
                            
                        case "A+":
                            alphabeticalGradePoints = APlusForAP
                            
                        case "A":
                            alphabeticalGradePoints = AForAP
                            
                        case "B+":
                            alphabeticalGradePoints = BPlusForAP
                            
                        case "B":
                            alphabeticalGradePoints = BForAP
                            
                        case "C+":
                            alphabeticalGradePoints = CPlusForAP
                            
                        case "C":
                            alphabeticalGradePoints = CForAP
                            
                        case "D":
                            alphabeticalGradePoints = DForAP
                            
                        default:
                            alphabeticalGradePoints = FForAP
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
  
        } else {
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
           }
    gradePoints = grade
        }
        
    }
}


