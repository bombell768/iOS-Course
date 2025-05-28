//
//  Professor.swift
//  iOS-Course
//
//  Created by Bartosz Strzecha on 28/05/2025.
//

class Professor: Person {
    var faculty: String
    
    init(name: String, age: Int, faculty: String) {
        self.faculty = faculty
        super.init(name: name, age: age)
    }
}
