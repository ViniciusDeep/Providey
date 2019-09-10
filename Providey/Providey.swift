//
//  Providey.swift
//  Providey
//
//  Created by Vinicius Mangueira on 10/09/19.
//  Copyright © 2019 Vinicius Mangueira. All rights reserved.
//

import Foundation

struct Providey<T: Decodable > {
    
}

enum ProvideyMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}

extension ProvideyMethod {
    func request(router: ProvideyRouter,withMethod method: ProvideyMethod, completion: @escaping (Result<Data, Error>) -> ()) {
        
        
        
    }
}

enum ProvideyRouter {
    
}
