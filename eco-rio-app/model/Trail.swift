//
//  Trail.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 20/06/22.
//

import Foundation

class Trail: Place {
    
    var totalDistance:String
    var altitude:Int
    var difficultyLevel: DifficultyLevelEnum
    
 
    init(id: Int, name:String, meanRank:Float, visitCount: Int,photosURL: [String], endemicSpecies: [String], evaluations:[Evaluate], location: Location, totalDistance: String, altitude:Int, difficultyLevel: DifficultyLevelEnum){

        self.totalDistance = totalDistance
        self.altitude = altitude
        self.difficultyLevel = difficultyLevel
        
        super.init(id: id, name: name, meanRank:meanRank, visitCount: visitCount,photosURL: photosURL, endemicSpecies: endemicSpecies, evaluations:evaluations, location: location)
        
    }
 
}
