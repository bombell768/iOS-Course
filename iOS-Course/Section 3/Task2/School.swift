//
//  School.swift
//  iOS-Course
//
//  Created by Bartosz Strzecha on 29/05/2025.
//

struct School {
    enum SchoolRole {
        case student
        case teacher
        case administrator
    }
    
    class Person {
        let name: String
        let role: SchoolRole
        
        init(name: String, role: SchoolRole) {
            self.name = name
            self.role = role
        }
    }
    
    var peopleList: [Person] = []
    
    subscript(role: SchoolRole) -> [Person] {
        return peopleList.filter { $0.role == role }
    }
    
    mutating func addPerson(_ person: Person) {
        peopleList.append(person)
    }
}



func countStudents(school: School) -> Int {
    return school[.student].count
}

func countTeachers(school: School) -> Int {
    return school[.teacher].count
}

func countAdministrators(school: School) -> Int {
    return school[.administrator].count
}
