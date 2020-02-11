//
//  GetCommentResponse.swift
//  SwiftbookMVCN
//
//  Created by Valeriy Kovalevskiy on 2/11/20.
//  Copyright © 2020 v.kovalevskiy. All rights reserved.
//

import Foundation

struct GetCommentResponse {
    typealias JSON = [String:AnyObject]
    let comments: [Comment]
    
    init(json: Any) throws {
        guard let array = json as? [JSON] else { throw NetworkError.noInternetConnection }
        
        var comments = [Comment]()
        for dictionary in array {
            guard let comment = Comment(dict: dictionary) else { continue }
            
            comments.append(comment)
        }
        
        self.comments = comments
    }
}
