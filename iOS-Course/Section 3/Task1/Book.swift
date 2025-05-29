//
//  Book.swift
//  iOS-Course
//
//  Created by Bartosz Strzecha on 29/05/2025.
//

import Foundation

protocol Borrowable {
    var borrowDate: Date? { get set }
    var returnDate: Date? { get set }
    var isBorrowed: Bool { get set }
    
    func isOverdue() -> Bool
    mutating func checkIn()
}

extension Borrowable {
    func isOverdue() -> Bool {
        return isBorrowed ? Date() > (returnDate ?? Date.distantFuture) : false
    }
    
    mutating func checkIn() {
        borrowDate = nil
        returnDate = nil
        isBorrowed = false
    }
}

class Book: Item, Borrowable {
    var borrowDate: Date?
    var returnDate: Date?
    var isBorrowed: Bool = false
}

