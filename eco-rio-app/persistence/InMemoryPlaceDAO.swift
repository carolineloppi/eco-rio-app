//
//  InMemoryPlaceDAO.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 28/06/22.
//

import Foundation

class InMemoryPlaceDAO : PlaceDAO{

    
    override func getAllPlaces() -> [Place]{
        self.populateMockPlacesList()
        return self.placesList
    }
    
    
    override func getPlaces(userlocation : Location, interestRange: Int) -> [Place]{
        return []
    }
    
    func populateMockPlacesList() {
        
        // Define Locations
        let p1Location =  Location(latitude: 22.9493, longitude: 43.1546)
        let p2Location =  Location(latitude: 22.9582, longitude: 43.2116)
        let p3Location =  Location(latitude: 22.9638, longitude: 43.2223)
        let p4Location =  Location(latitude: 22.9300, longitude: 43.1724)
        let p5Location =  Location(latitude: 22.9723, longitude: 43.2035)
        let p6Location =  Location(latitude: 22.9738, longitude: 43.2110)
        let p7Location =  Location(latitude: 22.9799, longitude: 43.2421)
        let p8Location =  Location(latitude: 22.9739, longitude: 43.1853)
        let p9Location =  Location(latitude: 22.9873, longitude: 43.2212)
        
        
        // Create In Memory Places
        let p1 =  Place(id: 1, name: "Trilha do Morro da Urca", meanRank: 5, visitCount: 2, photosURL: [], endemicSpecies: ["Bromélias", "Orquídeas"], evaluations: [], location: p1Location)
        
        let p2 =  Place(id: 2, name: "Parque Lage", meanRank: 4.5, visitCount: 20, photosURL: [], endemicSpecies: [], evaluations: [], location: p2Location)
        
        let p3 =  Place(id: 3, name: "Jardim Botânico", meanRank: 5, visitCount: 60, photosURL: [], endemicSpecies: [], evaluations: [], location: p3Location)
        
        let p4 =  Place(id: 4, name: "Aterro do Flamengo", meanRank: 5, visitCount: 60, photosURL: [], endemicSpecies: [], evaluations: [], location: p4Location)
        
        let p5 =  Place(id: 5, name: "Parque da Catacumba", meanRank: 5, visitCount: 20, photosURL: [], endemicSpecies: [], evaluations: [], location: p5Location)
        
        let p6 =  Place(id: 6, name: "Lagoa Rodrigo de Freitas", meanRank: 5, visitCount: 30, photosURL: [], endemicSpecies: [], evaluations: [], location: p6Location)
        
        let p7 =  Place(id: 7, name: "Parque Natural Municipal da Cidade", meanRank: 3, visitCount: 60, photosURL: [], endemicSpecies: [], evaluations: [], location: p7Location)
        
        let p8 =  Place(id: 8, name: "Praia de Copacabana", meanRank: 5, visitCount: 100, photosURL: [], endemicSpecies: [], evaluations: [], location: p8Location)
        
        let p9 =  Place(id: 9, name: "Praia do Leblon", meanRank: 5, visitCount: 45, photosURL: [], endemicSpecies: [], evaluations: [], location: p9Location)
        
        // Array of Places
        let inMemoryPlaces = [p1, p2,p3, p4,p5,p6,p7,p8,p9]
        
        //Populates placesList with InMemoryPlaces
        self.placesList.append(contentsOf: inMemoryPlaces)
    }
    
    public func hasVisitedPlace(placeId: Int) -> Bool{
        
        let activeUser  = Session.getUsersDAO().currentActiveUser
        let activeUserEvaluations = activeUser!.evaluations
             
        if(activeUserEvaluations.contains(where: {$0.placeId == placeId})){
            return true
        }else{
            return false
        }
    }

}

