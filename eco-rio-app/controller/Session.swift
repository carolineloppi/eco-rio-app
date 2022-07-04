//
//  Session.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 04/07/22.
//

import Foundation

class Session{
 
    
    private static var placesDAO = InMemoryPlaceDAO(placesList: [])
    private static var usersDAO = InMemoryUserDAO(usersList: [])
    
    
    static func getPlacesDAO() -> InMemoryPlaceDAO{
        return placesDAO
    }
    
    static func getUsersDAO() -> InMemoryUserDAO{
        return usersDAO
    }
    
}
