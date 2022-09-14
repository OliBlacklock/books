//
//  BookModel.swift
//  Books
//
//  Created by Oliver on 14/09/2022.
//

import Foundation

class BookModel: ObservableObject {
    
    @Published var books = [Book]()
    
    init() {
        let pathString = Bundle.main.path(forResource: "books", ofType: "json")
        
        if pathString != nil {
            let url = URL(fileURLWithPath: pathString!)
            
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                
                do {
                    var jsonBooks = try decoder.decode(([Book].self), from: data)
//                    for index in 0..<jsonBooks.count {
//                        jsonBooks[index].id = UUID()
//                    }
                    self.books = jsonBooks
                }
                catch {
                    print(error)
                }
            }
            catch {
                print(error)
            }
        }
    }
}
