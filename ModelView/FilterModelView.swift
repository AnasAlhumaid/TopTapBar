//
//  FilterModelView.swift
//  TopTapBar
//
//  Created by Anas Hamad on 10/2/22.
//

import Foundation

enum FilterModelView: Int , CaseIterable {
    case all
    case Fation
    case food
    case coffee
    case electronic
    
    var title : String{
        switch self{
       
        case .Fation: return "ازياء"
        case .food : return "مطاعم"
        case .coffee : return "قهوة"
        case.electronic : return "الكترونيات"
        case .all: return "الكل"
        }
        
    }
    
}
