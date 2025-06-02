//
//  Professor.swift
//  iOS-Course
//
//  Created by Bartosz Strzecha on 28/05/2025.
//

class Professor: Person {
    static var professorCount = 0
    let faculty: String
    var fullTitle: String {
        "\(name), \(age) years old, \(faculty)"
    }
    
    init(name: String, age: Int, faculty: String) {
        self.faculty = faculty
        super.init(name: name, age: age)
    }
}
