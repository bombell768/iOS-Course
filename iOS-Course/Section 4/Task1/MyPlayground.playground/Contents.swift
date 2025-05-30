class Stack<T> {
    private var elements: [T] = []
    
    func push(_ element: T) {
        elements.append(element)
    }
    
    func pop() -> T? {
        return elements.popLast()
    }
    
    func size() -> Int {
        return elements.count
    }
    
    func printStackContents() -> String where T: CustomStringConvertible {
        let stringRepresentationOfElements = elements.map { "\($0)" }.joined(separator: ", ")
        print("Stack contents: \n\(stringRepresentationOfElements)")
        return stringRepresentationOfElements
    }
}

class MyClass: CustomStringConvertible {
    var name: String

    init(name: String) {
        self.name = name
    }

    var description: String {
        return "MyClass(name: \(name))"
    }
}

let intStack = Stack<Int>()
intStack.push(1)
intStack.push(2)
intStack.push(3)
print("Stack size: \(intStack.size())")
intStack.printStackContents()
print("Popped element: \(intStack.pop() ?? -1)") // Popped element: 3
print("Stack size after pop: \(intStack.size())")
intStack.push(41)
intStack.printStackContents()


let stack2 = Stack<MyClass>()
stack2.push(MyClass(name: "Hello"))
stack2.push(MyClass(name: "World"))
stack2.printStackContents()
