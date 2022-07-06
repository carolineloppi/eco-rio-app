//
//  EcoRioRankingStrategy.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 05/07/22.
//

import Foundation

class EcoRioRankingStrategy: RankingStrategy{

    
    override func generateRanking(scores: [Evaluate]) -> Double {
        let evaluationValues: [Double] = scores.map {$0.userRank}
        
        let sumArray = evaluationValues.reduce(0, +)
        let averageRank = sumArray / Double(evaluationValues.count)
        
        return averageRank
    }
    
}
