//
//  BaseResult.swift
//  mymx
//
//  Created by ice on 2024/11/12.
//

import Foundation

struct BaseResult<T: Codable>: Codable{
    var data: T?
    var error: String?
    var success: Bool?
}
