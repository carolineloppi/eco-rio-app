//
//  UserDao.swift
//  eco-rio-app
//
//  Created by user221974 on 6/28/22.
//

import Foundation
class UserDao {
    
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



}
