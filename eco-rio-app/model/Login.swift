//
//  Login.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 20/06/22.
//

import Foundation

//TODO: como implementar um singleton
class Login {
    
    var user:String
    var password:String
    
    init(user: String, password: String){
        self.user   = user
        self.password = password
    }
    
    func authenticate() -> Bool {
        //TODO authenticate
        return false
    }
 
}

