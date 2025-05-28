//
//  AdminUser.swift
//  iOS-Course
//
//  Created by Bartosz Strzecha on 28/05/2025.
//

class AdminUser: UserManager {
    override init() {
        super.init()
    }
    
    func listAllUsers() -> [String] {
        var listOfUsers: [String] = []
        for user in super.users {
            listOfUsers.append(user.key)
        }
        return listOfUsers
    }
    
    deinit {
        print("AdminUser instance deinitialized!")
    }
}

