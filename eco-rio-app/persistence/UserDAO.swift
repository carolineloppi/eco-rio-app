//
//  UserDAO.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 20/06/22.
//

import Foundation

class UserDAO {
    
    public static var usersList: [User]=[User]()
    
    static func loadUsers(){
        print("I was called!!")
        let location = Location(latitude: 10, longitude: 20);
        let user1 = User(id: 1, email: "wendy@gmail.com", name: "Wendy", userName: "wendy", password: "123", location: location, evaluations: [])
        let user2 = User(id: 2, email: "pepe@gmail.com", name: "Pepe", userName: "Pepe", password: "123", location: location, evaluations: [])
        let user3 = User(id: 3, email: "lolo@gmail.com", name: "Lolo", userName: "Lolo", password: "123", location: location, evaluations: [])
        UserDAO.usersList.append(user1)
        UserDAO.usersList.append(user2)
        UserDAO.usersList.append(user3)        //self.usersList = [User]()
    }
    
    public static func addUser(userTemp:User)  {
        usersList.append(userTemp)
    }
    
    public static func getUsers() -> [User] {
        self.loadUsers()
        print("THE LIST")
        print(UserDAO.usersList)
        return UserDAO.usersList
    }

    //TODO
    func getUser(login: String, password: String) -> User?{
        return nil
    }
}
