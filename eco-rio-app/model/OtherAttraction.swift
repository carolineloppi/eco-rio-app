//
//  OtherAttraction.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 20/06/22.
//

import Foundation

class OtherAttraction {
    
    var history:String
    var foundationYear:Int
    var path: String
    var category: CategoryEnum
    
    
    init(history: String, foundationYear: Int, path: String, category: CategoryEnum){
        self.history = history
        self.foundationYear = foundationYear
        self.path = path
        self.category = category
    }
 
}
