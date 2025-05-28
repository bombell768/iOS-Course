import UIKit

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


func test(_ description: String, _ condition: Bool) {
    let icon = condition ? "✅" : "❌"
    print("\(icon) \(description)")
}


func runTests() {
    let admin = AdminUser()

    test("Register User1", admin.registerUser(username: "user1", email: "user1@example.com", password: "pass123"))
    test("Register User2", admin.registerUser(username: "user2", email: "user2@example.com", password: "pass456"))
    test("Duplicate Register User1", !admin.registerUser(username: "user1", email: "another@example.com", password: "newpass"))

    test("Login with correct credentials (User1)", admin.login(username: "user1", password: "pass123"))
    test("Login with wrong password (User1)", !admin.login(username: "user1", password: "wrongpass"))
    test("Login non-existing user", !admin.login(username: "user3", password: "whatever"))

    test("User count == 2", admin.userCount == 2)
    test("All users contain User1", admin.listAllUsers().contains("user1"))
    test("All users contain User2", admin.listAllUsers().contains("user2"))

    test("Remove User2", admin.removeUser(username: "user2"))
    test("Remove User2 again fails", !admin.removeUser(username: "user2"))

    test("User count after deletion == 1", admin.userCount == 1)
    test("All users after deletion contain only User1", admin.listAllUsers() == ["user1"])
}

// Run tests
runTests()
