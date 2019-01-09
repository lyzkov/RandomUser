//
//  UserList.swift
//  RandomUser
//
//  Created by BOGU$ on 09/01/2019.
//  Copyright © 2019 Technoscence. All rights reserved.
//

import Foundation

struct UserList: Decodable {
    
    struct Info: Decodable {
        let seed: String
        let results: UInt
        let page: UInt
        let version: String
    }
    
    let results: [User]
    let info: Info
    
}
