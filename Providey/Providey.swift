//
//  Providey.swift
//  Providey
//
//  Created by Vinicius Mangueira on 10/09/19.
//  Copyright © 2019 Vinicius Mangueira. All rights reserved.
//

import Foundation

struct Providey<T: Decodable> {
    func request(router: ProvideyRouter, withMethod method: ProvideyMethod, params: [String : Any]?, completion: @escaping (Result<T, Error>) -> () ) {
        method.request(router: router, params: params) { (result) in
            switch result {
            case .failure(let error):
                completion(.failure(error))
            case .success(let data):
                do {
                    let refund = try JSONDecoder().decode(T.self, from: data)
                    DispatchQueue.main.async {completion(.success(refund))}
                } catch {
                    DispatchQueue.main.async {completion(.failure(error))}
                }
            }
        }
    }
}

enum ProvideyMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}

extension ProvideyMethod {
    func request(router: ProvideyRouter, params: [String: Any]?, completion: @escaping (Result<Data, Error>)-> ()) {
        guard let url = URL(string: router.rawValue) else {return}
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = rawValue
        
        do {
            let data = try JSONSerialization.data(withJSONObject: params ?? "", options: .init())
            
        urlRequest.httpBody = data
        urlRequest.setValue("application/json", forHTTPHeaderField: "content-type")
            
           URLSession.shared.dataTask(with: urlRequest) { (data, _, err) in
                if let error = err { completion(.failure(error))}
                guard let data = data else {return print("Does not load data")}
                completion(.success(data))
            }.resume()
        } catch {
            completion(.failure(error))
        }
    }
}

enum ProvideyRouter: String {
    case home = "www.google.com/home" // Something to test
}
