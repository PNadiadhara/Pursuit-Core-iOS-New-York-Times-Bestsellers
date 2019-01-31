//
//  NYTCategoryAPI.swift
//  NYTBestsellers
//
//  Created by Pritesh Nadiadhara on 1/31/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

final class NYTBestSellerCategoryAPIClient {
    static func NYTCategory (completionHandler: @escaping (AppError?, [CategoryInfo]?) -> Void) {
        let urlString = "https://api.nytimes.com/svc/books/v3/lists/names.json?api-key=\(SecretNYTKey.NYTAPIKey)"
        NetworkHelper.shared.performDataTask(endpointURLString: urlString) { (error, data) in
            if let error = error {
                completionHandler(error, nil)
            } else if let data = data {
                do {
                    let categoryData = try JSONDecoder().decode(Category.self, from: data)
                    completionHandler(nil, categoryData.results)
                } catch {
                    completionHandler(AppError.jsonDecodingError(error), nil)
                }
            }
        }
    }
}
