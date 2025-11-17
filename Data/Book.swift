//
//  Book.swift
//  BookTracker
//
//  Created by Lubelihle Ndlovu on 2025/06/01.
//

import Foundation

struct Book: Identifiable {
    let id = UUID()
    let title: String
    let author: String
    let pages: String
    let ratings: String
    let image: String
    let purchaseURL: String
}

