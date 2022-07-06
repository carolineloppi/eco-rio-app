//
//  Login.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 20/06/22.
//

import Foundation

class LoginStrategy {
    
    var user:String
    var password:String
    
    init(user: String, password: String){
        self.user   = user
        self.password = password
    }
    
    func authenticate() -> Bool {
        return false
    }
 
}

