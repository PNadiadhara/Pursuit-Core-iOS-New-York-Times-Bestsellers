//
//  GoogleBook.swift
//  NYTBestsellers
//
//  Created by Pritesh Nadiadhara on 1/31/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

struct GoogleBook : Codable {
    let items : [GoogleBookInfo]
}

struct GoogleBookInfo : Codable {
    let volumeInfo : GoogleBookDetailedInfo
}

struct GoogleBookDetailedInfo : Codable {
    let description : String
    let imageLinks : LinkImages
}

struct LinkImages: Codable {
    let thumbnail : String
}
