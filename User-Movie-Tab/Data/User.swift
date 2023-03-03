//
//  User.swift
//  User-Movie-Tab
//
//  Created by Sejal on 03/03/23.
//

import Foundation
struct Roots: Decodable {
    var total: Int
    var users: [User]
}

struct User: Decodable {
    var firstName: String
    var lastName: String
    var age: Int
}
