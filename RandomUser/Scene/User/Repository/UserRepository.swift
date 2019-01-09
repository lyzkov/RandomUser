//
//  UserRepository.swift
//  RandomUser
//
//  Created by BOGU$ on 03/01/2019.
//  Copyright © 2019 Technoscence. All rights reserved.
//

import RxSwift

class UserRepository: Repository {
    
    let session = URLSession.shared
    
    func getUserList(results: UInt) -> Single<UserList> {
        return fetchData(forEndpoint: GetUsersEndpoint(results: results)).decoded().asSingle()
    }
    
    func getOneHundredUsers() -> Single<[User]> {
        return getUserList(results: 100).map { $0.results }
    }
    
}
