//
//  NYTBookDetailAPI.swift
//  NYTBestsellers
//
//  Created by Pritesh Nadiadhara on 1/31/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

final class NYTBestSellerBookInfo {
    static func NYTBookinfo (category: String, completionHandler: @escaping (AppError?, [BestCategoryInfo]?) -> Void) {
        let urlString = "https://api.nytimes.com/svc/books/v3/lists.json?api-key=\(SecretNYTKey.NYTAPIKey)&list=\(category)"
        NetworkHelper.shared.performDataTask(endpointURLString: urlString) { (error, data) in
            if let error = error {
                completionHandler(error, nil)
            } else if let data = data {
                do {
                    let categoryInfoData = try JSONDecoder().decode(BestCategory.self, from: data)
                    completionHandler (nil, categoryInfoData.results)
                } catch {
                    completionHandler(AppError.jsonDecodingError(error), nil)
                }
            }
        }
    }
}
