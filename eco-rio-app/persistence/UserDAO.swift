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
        
        let location = Location(latitude: 10, longitude: 20);
        let user1 = User(id: 1, email: "wendy@gmail.com", name: "Wendy", userName: "wendy", password: "123", location: location, evaluations: []);
        
        usersList.append(user1)
        
        return usersList
    }

    //TODO
    func getUser(login: String, password: String) -> User?{
        return nil
    }
}
