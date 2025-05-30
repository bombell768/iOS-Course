//
//  Stack.swift
//  iOS-Course
//
//  Created by Bartosz Strzecha on 30/05/2025.
//

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
