//
//  Library.swift
//  iOS-Course
//
//  Created by Bartosz Strzecha on 29/05/2025.
//

import Foundation

enum LibraryError: Error {
    case itemNotFound
    case itemNotBorrowable
    case alreadyBorrowed
}

class Library {
    var items: [String: Item] = [:]
    
    func addBook(_ book: Book) {
        if items[book.id] == nil {
            items[book.id] = book
        }
    }
    
    func borrowItem(by id: String) throws -> Item {
        guard let item = items[id] else {
            throw LibraryError.itemNotFound
        }
        
        guard var borrowableItem = item as? Borrowable else {
            throw LibraryError.itemNotBorrowable
        }
        
        guard !borrowableItem.isBorrowed else {
            throw LibraryError.alreadyBorrowed
        }
        
        borrowableItem.borrowDate = Date()
        borrowableItem.returnDate = Calendar.current.date(byAdding: .day, value: 30, to: Date())
        borrowableItem.isBorrowed = true
        
        return item
    }
}
