//
//  BestCategory.swift
//  NYTBestsellers
//
//  Created by Pritesh Nadiadhara on 1/30/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

struct BestCategory : Codable {
    let results : [BestCategoryInfo]
}

struct BestCategoryInfo : Codable {
    let list_name : String
    let weeks_on_list : Int
    let book_details : [BookDetailInfo]
    
}

struct BookDetailInfo : Codable {
    let title : String
    let description : String
    let primary_isbn13 : String

}
