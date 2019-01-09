//
//  Endpoint.swift
//  RandomUser
//
//  Created by BOGU$ on 03/01/2019.
//  Copyright © 2019 Technoscence. All rights reserved.
//

import Foundation

enum ContentType: String {
    case json = "application/json"
}

enum HTTPHeaderField: String {
    case authentication = "Authorization"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
}

protocol URLRequestConvertible {
    func asURLRequest() throws -> URLRequest
}

enum HTTPMethod: String {
    case options = "OPTIONS"
    case get     = "GET"
    case head    = "HEAD"
    case post    = "POST"
    case put     = "PUT"
    case patch   = "PATCH"
    case delete  = "DELETE"
    case trace   = "TRACE"
    case connect = "CONNECT"
}

protocol Endpoint: URLRequestConvertible {
    associatedtype A: API
    var method: HTTPMethod { get }
    var path: String { get }
    var headers: [String: Any]? { get }
}

extension Endpoint {
    
    func asURLRequest() throws -> URLRequest {
        var request = URLRequest(url: URL(string: A.baseUrl.absoluteString + path)!)
        request.httpMethod = method.rawValue
        
        request.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.acceptType.rawValue)
        request.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.contentType.rawValue)
        
        return request
    }
    
}
