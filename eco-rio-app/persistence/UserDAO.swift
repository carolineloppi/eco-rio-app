//
//  UserDAO.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 20/06/22.
//

import Foundation

class UserDAO {
    
    public static var usersList: [User]=[User]()
    init(){
        
        //self.usersList = [User]()
    }
    
    public static func addUser(userTemp:User)  {
        usersList.append(userTemp)
    }
    
    public static func getUsers() -> [User] {
        
        return usersList
    }

    //TODO
    func getUser(login: String, password: String) -> User?{
        return nil
    }
}
