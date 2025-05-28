//
//  Student.swift
//  iOS-Course
//
//  Created by Bartosz Strzecha on 28/05/2025.
//

class Student: Person {
    static var studentCount = 0
    let studentID: String
    var major: String
    weak var advisor: Professor?
    var formattedID: String {
        "ID: \(studentID.uppercased())"
    }
    
    init(name: String, age: Int, studentID: String, major: String) {
        self.studentID = studentID
        self.major = major
        super.init(name: name, age: age)
    }
    
    required init(studentID: String, major: String) {
        self.studentID = studentID
        self.major = major
        super.init(name: "Default", age: 20)
    }
    
    convenience init() {
        self.init(name: "Default", age: 20, studentID: "m657890s", major: "Computer Science")
    }
}
