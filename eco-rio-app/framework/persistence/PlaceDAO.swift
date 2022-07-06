//
//  PlaceDAO.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 20/06/22.
//

import Foundation

class PlaceDAO {
    
    
    var placesList: [Place]
    
    init(placesList: [Place]){
        self.placesList = placesList
    }
    
    
    func getAllPlaces() -> [Place]{
        return []
    }
    
    func getPlaces(userlocation : Location, interestRange: Int) -> [Place]{
        return []
    }
    
    func getRank(place: Place) -> Int{
        return 0;
    }

}
