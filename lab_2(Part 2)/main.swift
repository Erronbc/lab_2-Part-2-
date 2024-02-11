//
//  main.swift
//  lab_2(Part 2)
//
//  Created by HAZY on 11.02.2024.
//

import Foundation

class Book {
    let title: String
    let author: String
    let year: Int
    let pageCount: Int

    
    init(title: String, author: String, year: Int, pageCount: Int) {
        self.title = title
        self.author = author
        self.year = year
        self.pageCount = pageCount
    }

    
    func displayBookInfo() {
        print("Title: \(title)")
        print("Author: \(author)")
        print("Year: \(year)")
        print("Page Count: \(pageCount)")
    }
}




class Library {
    var books: [Book]

    
    
    init() {
        self.books = []
    }
    
    func addBook(book: Book) {
        books.append(book)
        print("Book '\(book.title)' added to the library.")
    }

    func removeBook(title: String) {
        guard let index = books.firstIndex(where: { $0.title == title }) else {
            print("Book '\(title)' not found in the library.")
            return
        }
        let removedBook = books.remove(at: index)
        print("Book '\(removedBook.title)' removed from the library.")
    }
    
    func displayAllBooksInfo() {
        if books.isEmpty {
            print("The library is empty.")
        } else {
            print("Books in the library:")
            for book in books {
                book.displayBookInfo()
                print("-------------------")
            }
        }
    }
}


let library = Library()

let book1 = Book(title: "Crime and Punishment", author: "Fyodor Dostoevsky", year: 1866, pageCount: 672 )
let book2 = Book(title: "The Lightning Thief", author: "Rick Riordan", year: 2005, pageCount: 377)

library.addBook(book: book1)
library.addBook(book: book2)

library.displayAllBooksInfo()

library.removeBook(title: "Labirint of Death")
library.removeBook(title: "Crime and Punishment")

library.displayAllBooksInfo()


