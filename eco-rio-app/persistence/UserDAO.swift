//
//  UserDAO.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 20/06/22.
//

import Foundation

class UserDAO {
    
    public static var usersList: [User]=[User]()
    public static var currentActiveUser: User? = User()
    
    static func loadUsers(){

        let location = Location(latitude: 10, longitude: 20);
        let user1 = User(id: 1, email: "wendy@gmail.com", name: "Wendy", userName: "wendy", password: "123", location: location, evaluations: [])
        
        let pepeEval1 = Evaluate(userRank: 5, userId: 2, placeId: 9)
        let pepeEval2 = Evaluate(userRank: 4, userId: 2, placeId: 2)
        let pepeEval3 = Evaluate(userRank: 5, userId: 2, placeId: 4)

        let user2 = User(id: 2, email: "pepe@gmail.com", name: "Pepe", userName: "Pepe", password: "123", location: location, evaluations: [pepeEval1, pepeEval2, pepeEval3])
        
        let user3 = User(id: 3, email: "lolo@gmail.com", name: "Lolo", userName: "Lolo", password: "123", location: location, evaluations: [])
        
        UserDAO.usersList.append(user1)
        UserDAO.usersList.append(user2)
        UserDAO.usersList.append(user3)
    }
    
    public static func addUser(userTemp:User)  {
        usersList.append(userTemp)
    }
    
    public static func getUsers() -> [User] {
        self.loadUsers()
        return UserDAO.usersList
    }

    public static func getUser(login: String, password: String) -> User?{
        
        let user = UserDAO.getUsers().filter({$0.email==login && $0.password==password})[0]

        return user
    }
}
