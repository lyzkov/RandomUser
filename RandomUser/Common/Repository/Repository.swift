//
//  Repository.swift
//  RandomUser
//
//  Created by BOGU$ on 08/01/2019.
//  Copyright © 2019 Technoscence. All rights reserved.
//

import RxSwift

protocol Repository {
    var session: URLSession { get }
    func fetchData<EndpointType: Endpoint>(forEndpoint endpoint: EndpointType) -> Single<Data>
}

extension Repository {
    
    func fetchData<EndpointType: Endpoint>(forEndpoint endpoint: EndpointType) -> Single<Data> {
        do {
            let request = try endpoint.asURLRequest()
            return session.rx.data(request: request).asSingle()
        } catch let error {
            return .error(error)
        }
    }
    
}
