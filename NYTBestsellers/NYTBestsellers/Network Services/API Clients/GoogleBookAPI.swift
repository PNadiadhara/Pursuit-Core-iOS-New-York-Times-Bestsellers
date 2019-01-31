//
//  GoogleBookAPI.swift
//  NYTBestsellers
//
//  Created by Pritesh Nadiadhara on 1/31/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

final class GoogleBookAPIClient {
    static func GoogleBookInfoz (isbn: String, completionHanlder: @escaping (AppError?, GoogleBookDetailedInfo?) -> Void) {
        let urlString = "https://www.googleapis.com/books/v1/volumes?q=isbn:\(isbn)&key=\(SecretGoogleKey.GoogleAPIKey)"
        NetworkHelper.shared.performDataTask(endpointURLString: urlString) { (error, data) in
            if let error = error {
                completionHanlder(error,nil)
            } else if let data = data {
                do {
                    let bookData = try JSONDecoder().decode(GoogleBookInfo.self, from: data)
                    completionHanlder (error, bookData.volumeInfo)
                } catch {
                    completionHanlder(AppError.jsonDecodingError(error), nil)
                }
            }
        }
        
    }
}
