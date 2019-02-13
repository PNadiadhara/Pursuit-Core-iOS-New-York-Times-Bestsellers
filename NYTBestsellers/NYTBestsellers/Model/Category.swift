//
//  Category.swift
//  NYTBestsellers
//
//  Created by Pritesh Nadiadhara on 1/30/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

// for end point 1 : https://api.nytimes.com/svc/books/v3/lists/names.json?api-key=u6uFrKt30C6GGANOo2peeyAAwTNXA7bY
struct Category : Codable {
    let results : [CategoryInfo]
}

struct CategoryInfo: Codable {
    let display_name : String
}


