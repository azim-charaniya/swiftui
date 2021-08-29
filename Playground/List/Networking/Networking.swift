//
//  Networking.swift
//  Playground
//
//  Created by user204215 on 8/29/21.
//

import Foundation
import Alamofire


class Networking{
    
    public static func get(_ url: String){
        AF.request(url)
            .responseJSON({ (data) in
                print(data)
            })
    }
}


struct User{
    let id: Int
    let avatar: String
    let email: String
    let first_name: String
    let last_name: String
}
