//
//  User.swift
//  iOS-Course
//
//  Created by Bartosz Strzecha on 28/05/2025.
//

struct User {
    let username: String
    let email: String
    let password: String
    
    init(username: String, email: String, password: String) {
        self.username = username
        self.email = email
        self.password = password
    }
}
