//
//  LoginInMemoryStrategy.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 05/07/22.
//

import Foundation

class LoginInMemoryStrategy: LoginStrategy{
    
    override func authenticate() -> Bool {
                
        let usersDAO = Session.getUsersDAO()
        let currentUsers=usersDAO.getUsers()
        
        if(currentUsers.contains(where: {$0.email==self.user && $0.password==self.password})){
            
            //Sets current active user
            usersDAO.currentActiveUser = usersDAO.getUser(login: self.user, password: self.password) ?? nil
            
            return true
        }
        return false
    }
}
