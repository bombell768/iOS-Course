//
//  UserManager.swift
//  iOS-Course
//
//  Created by Bartosz Strzecha on 28/05/2025.
//

class UserManager {
    var users: [String: User] = [:]
    var userCount: Int {
        users.count
    }
    
    func registerUser(username: String, email: String, password: String) -> Bool {
        if users[username] == nil {
            users[username] = User(username: username, email: email, password: password)
            print("User registered successfully!")
            return true
        } else {
            print("User with this username already exists!")
            return false
        }
    }
    
    func login(username: String, password: String) -> Bool {
        if let user = users[username], user.password == password {
            print("User logged in")
            return true
        } else {
            print("Invalid username or password")
            return false
        }
    }
    
    func removeUser(username: String) -> Bool {
        if users[username] != nil {
            users[username] = nil
            print("User removed successfully!")
            return true
        } else {
            print("User not found!")
            return false
        }
    }
}
