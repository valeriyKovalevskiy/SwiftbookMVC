//
//  NetworkError.swift
//  SwiftbookMVCN
//
//  Created by Valeriy Kovalevskiy on 2/11/20.
//  Copyright © 2020 v.kovalevskiy. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case serverUnavailable
    case noInternetConnection
}
