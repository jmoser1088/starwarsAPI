//
//  Networking.swift
//  APITest
//
//  Created by Kent Franks on 12/18/18.
//  Copyright © 2018 Kent Franks. All rights reserved.
//

import Foundation

struct Networking {
    
    // MARK: - URLRequest
    private func createURLRequest(url: URL, type: String) -> URLRequest {
        var request = URLRequest(url: url)
        request.httpMethod = type
        request.setValue(Constants.applicationJsonValue, forHTTPHeaderField: Constants.contentTypeKey)
        return request
    }
    
    
    func fetchCharactersFromAPI(completion: @escaping ([Character]) -> Void) {
        guard let url = URL(string: "https://swapi.co/api/people") else {
            return
        }
        let request = createURLRequest(url: url, type: Constants.get)
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            if let jsonData = data {
                do {
                    let charactersResponse = try JSONDecoder().decode(CharacterResponse.self, from: jsonData)
                    guard let characters = charactersResponse.characters else {
                        return
                    }
                   // print("🤖 characters: \(characters)")
                    //                    completion(.success, getOrdersResponse)
                    completion(characters)
                    
                } catch {
                    print(error)
                    //                    completion(.failure, nil)
                }
            }
            }.resume()
    }
    
}
