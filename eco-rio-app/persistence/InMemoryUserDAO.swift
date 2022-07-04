//
//  InMemoryUserDAO.swift
//  eco-rio-app
//
//  Created by Caroline Loppi on 04/07/22.
//

import Foundation

class InMemoryUserDAO : UserDAO{

    
    func loadUsers(){

        let location = Location(latitude: 10, longitude: 20);
        let user1 = User(id: 1, email: "wendy@gmail.com", name: "Wendy", userName: "wendy", password: "123", location: location, evaluations: [])
        
        let pepeEval1 = Evaluate(userRank: 5, userId: 2, placeId: 9)
        let pepeEval2 = Evaluate(userRank: 4, userId: 2, placeId: 2)
        let pepeEval3 = Evaluate(userRank: 5, userId: 2, placeId: 4)

        let user2 = User(id: 2, email: "pepe@gmail.com", name: "Pepe", userName: "Pepe", password: "123", location: location, evaluations: [pepeEval1, pepeEval2, pepeEval3])
        
        let user3 = User(id: 3, email: "lolo@gmail.com", name: "Lolo", userName: "Lolo", password: "123", location: location, evaluations: [])
        
        self.usersList.append(user1)
        self.usersList.append(user2)
        self.usersList.append(user3)
    }
    
    override public func addUser(userTemp:User)  {
        usersList.append(userTemp)
    }
    
    override public func getUsers() -> [User] {
        self.loadUsers()
        return self.usersList
    }

    override public func getUser(login: String, password: String) -> User?{
        return self.getUsers().filter({$0.email==login && $0.password==password})[0]
    }

}

