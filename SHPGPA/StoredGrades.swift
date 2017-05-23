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
    let AForCP = A.CP.aGradePoints
    let AMinusForCP = AMinus.CP.rawValue
    let BPlusForCP = BPlus.CP.rawValue
    let BForCP = B.CP.bGradePoints
    let BMinusForCP = BMinus.CP.rawValue
    let CPlusForCP = CPlus.CP.rawValue
    let CForCP = C.CP.cGradePoints
    let CMinusForCP = CMinus.CP.rawValue
    let DPlusForCP = DPlus.CP.rawValue
    let DForCP = D.CP.dGradePoints
    let FForCP = F.CP.fGradePoints
    
    //All Honors Grades Values
    
    
    let APlusForHonors = APlus.Honors.rawValue
    let AForHonors = A.Honors.aGradePoints
    let AMinusForHonors = AMinus.Honors.rawValue
    let BPlusForHonors = BPlus.Honors.rawValue
    let BForHonors = B.Honors.bGradePoints
    let BMinusForHonors = BMinus.Honors.rawValue
    let CPlusForHonors = CPlus.Honors.rawValue
    let CForHonors = C.Honors.cGradePoints
    let CMinusForHonors = CMinus.Honors.rawValue
    let DPlusForHonors = DPlus.Honors.rawValue
    let DForHonors = D.Honors.dGradePoints
    let FForHonors = F.Honors.fGradePoints
    
    // All AP Grades Values
    
    let APlusForAP = APlus.AP.rawValue
    let AForAP = A.AP.aGradePoints
    let AMinusForAP = AMinus.AP.rawValue
    let BPlusForAP = BPlus.AP.rawValue
    let BForAP = B.AP.bGradePoints
    let BMinusForAP = BMinus.AP.rawValue
    let CPlusForAP = CPlus.AP.rawValue
    let CForAP = C.AP.cGradePoints
    let CMinusForAP = CMinus.AP.rawValue
    let DPlusForAP = DPlus.AP.dPlusGradePoints
    let DForAP = D.AP.dGradePoints
    let FForAP = F.AP.fGradePoints


    // All Unweighted Grades Values
    
    let APlusForUnweighted = APlus.Unweighted.rawValue
    let AForUnweighted = A.Unweighted.aGradePoints
    let AMinusForUnweighted = AMinus.Unweighted.rawValue
    let BPlusForUnweighted = BPlus.Unweighted.rawValue
    let BForUnweighted = B.Unweighted.bGradePoints
    let BMinusForUnweighted = BMinus.Unweighted.rawValue
    let CPlusForUnweighed = CPlus.Unweighted.rawValue
    let CForUnweighted = C.Unweighted.cGradePoints
    let CMinusForUnweighted = CMinus.Unweighted.rawValue
    let DPlusForUnweighted = DPlus.Unweighted.dPlusGradePoints
    let DForUnweighted = D.Unweighted.dGradePoints
    let FForUnweighted = F.Unweighted.fGradePoints
    
    
    
    // All stored SHP grades in enums
    
    enum APlus: Double {
    
    case CP = 4.50
    case Honors = 5.00
    case AP = 5.25
    case Unweighted = 4.00
    
    
    }
    
    enum A: Double {
        
        case CP
        case Honors
        case AP
        case Unweighted

        var aGradePoints: Double {

        switch self {
            case .CP: return 4.00
            case .Honors: return 4.50
            case .AP: return 4.75
            case .Unweighted: return 4.00
            }
        }
        
                
    }
    
    enum AMinus: Double {
    
    case CP = 4.00
    case Honors = 4.50
    case AP = 4.75
    case Unweighted = 3.7

    
    }
    
    enum BPlus: Double {
        
        case CP = 3.50
        case Honors = 4.00
        case AP = 4.25
        case Unweighted = 3.30
        
    }
    
    enum B: Double {
        
        case CP
        case Honors
        case AP
        case Unweighted

        var bGradePoints: Double {
            switch self {
                case .CP: return 3.00
                case .Honors: return 3.50
                case .AP: return 3.75
                case .Unweighted: return 3.00
        }
    }
            
        
    }
    
    enum BMinus: Double {
        
        case CP = 3.00
        case Honors = 3.50
        case AP = 3.75
        case Unweighted = 2.70
        
    }
    
    enum CPlus: Double {
        
        case CP = 2.50
        case Honors = 3.00
        case AP = 3.25
        case Unweighted = 2.30
    }
    
    enum C: Double {
        
        case CP
        case Honors
        case AP
        case Unweighted

        var cGradePoints: Double {
            switch self {
                case .CP: return 2.00
                case .Honors: return 2.50
                case .AP: return 2.75
                case .Unweighted: return 2.00
        }
    }
        
       
        
    }
    
    enum CMinus: Double {
        
        case CP = 2.00
        case Honors = 2.50
        case AP = 2.75
        case Unweighted = 1.70
        
    }
    
    enum DPlus: Double {
        
        case CP
        case Honors
        case AP
        case Unweighted
        
        var dPlusGradePoints: Double {
            switch self {
            case.CP: return 1.00
            case.Honors: return 1.00
            case.AP: return 1.00
            case .Unweighted: return 1.30
            }
        }
        
    }

    
    
    
    enum D {
        
        case CP
        case Honors
        case AP
        case Unweighted
        
        var dGradePoints: Double {
        
        switch self {
        
        case .CP: return 1.00
        case .Honors: return 1.00
        case .AP: return 1.00
        case .Unweighted: return 1.00
       
        
            }
        }
        
        
        
    }
    
    enum F {
        
        case CP
        case Honors
        case AP
        case Unweighted
        
        var fGradePoints: Double {
        switch self {
        
        case .CP: return 0.00
        case .Honors: return 0.00
        case .AP: return 0.00
        case .Unweighted: return 0.00
        
        
            }

        
        }
    
    
    }
    
   
    
    
}


