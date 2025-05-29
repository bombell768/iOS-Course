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

var school = School()

school.addPerson(School.Person(name: "Alice", role: .student))
school.addPerson(School.Person(name: "Brian", role: .student))
school.addPerson(School.Person(name: "Clara", role: .student))
school.addPerson(School.Person(name: "David", role: .student))
school.addPerson(School.Person(name: "Emma", role: .student))

school.addPerson(School.Person(name: "Mr. Smith", role: .teacher))
school.addPerson(School.Person(name: "Ms. Johnson", role: .teacher))
school.addPerson(School.Person(name: "Mrs. Clark", role: .teacher))

school.addPerson(School.Person(name: "Principal Adams", role: .administrator))


countStudents(school: school)
countTeachers(school: school)
countAdministrators(school: school)
