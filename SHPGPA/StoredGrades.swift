//
//  StoredGrades.swift
//  SHPGPA
//
//  Created by Tommy Sarni on 2/22/17.
//  Copyright © 2017 SHP. All rights reserved.
//

import Foundation

class StoredGrades {
    
    //var grade: Double!
 //   var classType: String!
    
    //All CP Grade Properties
    let APlusForCP = APlus.CP.rawValue
    let AForCP = A.CP.rawValue
    let BPlusForCP = BPlus.CP.rawValue
    let BForCP = B.CP.rawValue
    let CPlusForCP = CPlus.CP.rawValue
    let CForCP = C.CP.rawValue
    let DForCP = D.CP.dGradePoints
    let FForCP = F.CP.fGradePoints
    
    //All Honors Grades Values
    
    let APlusForHonors = APlus.Honors.rawValue
    let AForHonors = A.Honors.rawValue
    let BPlusForHonors = BPlus.Honors.rawValue
    let BForHonors = B.Honors.rawValue
    let CPlusForHonors = CPlus.Honors.rawValue
    let CForHonors = C.Honors.rawValue
    let DForHonors = D.Honors.dGradePoints
    let FForHonors = F.Honors.fGradePoints
    
    // All AP Grades Values
    
    let APlusForAP = APlus.AP.rawValue
    let AForAP = A.AP.rawValue
    let BPlusForAP = BPlus.AP.rawValue
    let BForAP = B.AP.rawValue
    let CPlusForAP = CPlus.AP.rawValue
    let CForAP = C.AP.rawValue
    let DForAP = D.AP.dGradePoints
    let FForAP = F.AP.fGradePoints
    
    // All stored SHP grades in enums
    
    enum APlus: Double {
    
    case CP = 4.50
    case Honors = 5.00
    case AP = 5.25
    
    }
    
    enum A: Double {
        
        case CP = 4.00
        case Honors = 4.50
        case AP = 4.75
        
    }
    
    enum BPlus: Double {
        
        case CP = 3.50
        case Honors = 4.00
        case AP = 4.25
        
    }
    
    enum B: Double {
        
        case CP = 3.00
        case Honors = 3.50
        case AP = 3.75
        
    }
    
    enum CPlus: Double {
        
        case CP = 2.50
        case Honors = 3.00
        case AP = 3.25
        
    }
    
    enum C: Double {
        
        case CP = 2.00
        case Honors = 2.50
        case AP = 2.75
        
    }
    
    enum D {
        
        case CP
        case Honors
        case AP
        
        var dGradePoints: Double {
        
        switch self {
        
        case .CP: return 1.00
        case .Honors: return 1.00
        case .AP: return 1.00
       
        
            }
        }
        
        
        
    }
    
    enum F {
        
        case CP
        case Honors
        case AP
        
        var fGradePoints: Double {
        switch self {
        
        case .CP: return 0.00
        case .Honors: return 0.00
        case .AP: return 0.00
        
        
            }

        
        }
    
    
    }
    
   
    
    
}


