//
//  NetworkService.swift
//  SwiftbookMVCN
//
//  Created by Valeriy Kovalevskiy on 2/11/20.
//  Copyright © 2020 v.kovalevskiy. All rights reserved.
//

import Foundation

class NetworkService {
    
    private init() {}
    
    static let shared = NetworkService()
    
    public func getData(url: URL, completion: @escaping (Any)->()) {
        let session = URLSession.shared
        
        session.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                DispatchQueue.main.async {
                    completion(json)
                }
            }
            catch {
                print("error")
            }
        }
        .resume()
    }
}
