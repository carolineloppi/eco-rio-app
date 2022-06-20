//
//  User.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 20/06/22.
//

import Foundation

class User {
    var id: Int
    var email:String
    var name:String
    var userName: String
    var password: String
    var location: Location
    var evaluations: [Evaluate]
    //var locationChangedObserver
    //Dúvida: lista de que?
    
    
    init(id: Int, email:String, name:String, userName: String, password: String, location: Location, evaluations: [Evaluate]){
        //generate random id
        self.id = 0
        self.email = email
        self.name = name
        self.userName = userName
        self.password = password
        self.location = location
        self.evaluations = evaluations
    }
    
    //TODO
    func registerLocationObserver(){
        
    }
    func removeLoctionObserver(){
        
    }
    func notifyLocationObserver(){
        
    }
    
    
    func sharePlace(place: Place) {
        
    }
    
    func sharePhoto(photo: String) {
        
    }
    
    func validatePlace (place: Place) {}
    
    func changePassword(newPassword: String) {}
    
    func updateLocation (location: Location) {}
    
    
}
