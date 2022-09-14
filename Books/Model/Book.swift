//
//  Book.swift
//  Books
//
//  Created by Oliver on 14/09/2022.
//

import Foundation


struct Book: Identifiable, Decodable {
    var title = ""
    var author = ""
    var isFavourite: Bool
    var rating: Int
    var currentPage: Int
    var id: Int
    var content = ""
}

