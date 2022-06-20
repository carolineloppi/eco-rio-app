//
//  Trail.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 20/06/22.
//

import Foundation

class Trail {
    
    var totalDistance:Int
    var altitude:Int
    var difficultyLevel: DifficultyLevelEnum
    
    
    init(totalDistance: Int, altitude:Int, difficultyLevel: DifficultyLevelEnum){
        self.totalDistance = totalDistance
        self.altitude = altitude
        self.difficultyLevel = difficultyLevel
    }
 
}
