//
//  GetUsersEndpoint.swift
//  RandomUser
//
//  Created by BOGU$ on 08/01/2019.
//  Copyright © 2019 Technoscence. All rights reserved.
//

import Foundation

struct GetUsersEndpoint: Endpoint {
    
    typealias A = RandomUserAPI
    
    let method: HTTPMethod = .get
    let path: String
    let headers: [String: Any]? = nil
    
    init(results: UInt) {
        path = "/?results=\(results)"
    }
    
}
