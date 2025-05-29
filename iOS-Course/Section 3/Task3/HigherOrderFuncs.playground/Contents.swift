let books = [
["title": "Swift Fundamentals", "author": "John Doe", "year": 2015, "price": 40, "genre": ["Programming", "Education"]],
["title": "The Great Gatsby", "author": "F. Scott Fitzgerald", "year": 1925, "price": 15, "genre": ["Classic", "Drama"]],
["title": "Game of Thrones", "author": "George R. R. Martin", "year": 1996, "price": 30, "genre": ["Fantasy", "Epic"]],
["title": "Big Data, Big Dupe", "author": "Stephen Few", "year": 2018, "price": 25, "genre": ["Technology", "Non-Fiction"]],
["title": "To Kill a Mockingbird", "author": "Harper Lee", "year": 1960, "price": 20, "genre": ["Classic", "Drama"]]
]

var discountedPrices: Array<Double> = books.compactMap { book in
    if let price = book["price"] as? Int {
        return Double(price) * 0.9
    } else if let price = book["price"] as? Double {
        return price * 0.9
    } else {
        return nil
    }
}

var booksPostedAfter2000: Array<String> = books
    .filter { book in
        if let year = book["year"] as? Int {
            return year > 2000
        }
        return false
    }
    .compactMap { book in
        book["title"] as? String
    }

var allGenres: Set<String> = Set(
    books.flatMap { book in
       book["genre"] as? [String] ?? []
    }
)

var totalCost: Int = books.reduce(0) { result, book in
    result + (book["price"] as? Int ?? 0)
}
