//
//  Decode.swift
//  RandomUser
//
//  Created by BOGU$ on 03/01/2019.
//  Copyright © 2019 Technoscence. All rights reserved.
//

import Foundation
import RxSwift

extension ObservableConvertibleType where E == Data {
    
    func decoded<Model>() -> Observable<Model> where Model: Decodable {
        return asObservable()
            .map { data throws in
                try JSONDecoder().decode(Model.self, from: data)
        }
    }
    
}
