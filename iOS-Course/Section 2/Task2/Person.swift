//
//  Person.swift
//  iOS-Course
//
//  Created by Bartosz Strzecha on 28/05/2025.
//

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    init?(name: String, age: Int, strictAge: Bool = true) {
        if age < 16 { return nil }
        self.name = name
        self.age = age
    }
}
