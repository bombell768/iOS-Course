//
//  AdminUser.swift
//  iOS-Course
//
//  Created by Bartosz Strzecha on 28/05/2025.
//

class AdminUser: UserManager {
    func listAllUsers() -> [String] {
        return Array(users.keys)
    }
    
    deinit {
        print("AdminUser instance deinitialized!")
    }
}

