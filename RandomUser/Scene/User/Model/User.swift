//
//  User.swift
//  RandomUser
//
//  Created by BOGU$ on 03/01/2019.
//  Copyright © 2019 Technoscence. All rights reserved.
//

import Foundation

struct User: Decodable {
    
    struct Name: Decodable {
        let title: String
        let first: String
        let last: String
    }
    
    let name: Name
    
}

extension User {
    
    var fullName: String {
        return "\(name.title) \(name.first) \(name.last)".capitalized
    }
    
}
