//
//  PlaceDAO.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 20/06/22.
//

import Foundation

class PlaceDAO {
    
    func updatePlaces(){}
    
    func getPlaces() -> [Place]{
        let sugarLoafLocation =  Location(latitude: 22.9493, longitude: 43.1546)
        let sugarLoafPlace =  Place(id: 1, name: "Trilha do Morro da Urca", meanRank: 5, visitCount: 2, photosURL: [], endemicSpecies: ["Bromélias", "Orquídeas"], evaluations: [], location: sugarLoafLocation)
        
        return []
    }
    
    func getPlaces(location : Location) -> [Place]{
        return []
    }
    
    func getRank(place: Place) -> Int{
        return 5;
    }

}
