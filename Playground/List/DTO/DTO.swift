//
//  DTO.swift
//  Playground
//
//  Created by user204215 on 8/29/21.
//

import Foundation

struct Pages : Decodable {
    let data: [User]
}

struct User : Decodable{
    let id: Int
    let avatar: String
    let email: String
    let first_name: String
    let last_name: String
}
