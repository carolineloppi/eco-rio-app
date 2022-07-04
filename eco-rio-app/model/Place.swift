//
//  Place.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 20/06/22.
//

import Foundation

class Place {
    var id:Int
    var name:String
    var meanRank:Float
    var visitCount: Int
    var photosURL: [String]
    var endemicSpecies: [String]
    //quando usuário der uma nota, devemos atualizar a lista de avaliacoes do local.
    var evaluations: [Evaluate]
    var location: Location
    
    
    
    
    init(id: Int, name:String, meanRank:Float, visitCount: Int,photosURL: [String], endemicSpecies: [String], evaluations:[Evaluate], location: Location){

        self.id = id
        self.name = name
        self.meanRank = meanRank
        self.visitCount = visitCount
        self.photosURL = photosURL
        self.endemicSpecies = endemicSpecies
        self.evaluations = evaluations
        self.location = location
    }
    
    func addPhoto(url: String){
        self.photosURL.append(url)
    }
    
    
    /*
    public Ranking(){
    sum=0
    foreach x in evaluacion
           sum+=x
    return sum/ evaluations.length
    }
    */
}
