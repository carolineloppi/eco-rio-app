//
//  UserDAO.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 20/06/22.
//

import Foundation

class UserDAO {
    
    public var usersList: [User]=[User]()
    public var currentActiveUser: User? = User()
    
    init(usersList: [User]){
        self.usersList = usersList
    }
    
    public func addUser(userTemp:User)  {
        self.usersList.append(userTemp)
    }
    
    public func getUsers() -> [User] {
        return self.usersList
    }

    public func getUser(login: String, password: String) -> User?{
        return nil
    }
}
