//
//  OtherAttraction.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 20/06/22.
//

import Foundation

class OtherAttraction: Place {
    
    var history:String
    var foundationYear:Int
    var path: String
    var category: CategoryEnum
    
 
    init(id: Int, name:String, meanRank:Float, visitCount: Int,photosURL: [String], endemicSpecies: [String], evaluations:[Evaluate], location: Location, history: String, foundationYear: Int, path: String, category: CategoryEnum){

        self.history = history
        self.foundationYear = foundationYear
        self.path = path
        self.category = category
        
        super.init(id: id, name: name, meanRank:meanRank, visitCount: visitCount,photosURL: photosURL, endemicSpecies: endemicSpecies, evaluations:evaluations, location: location)
        
    }
 
}
