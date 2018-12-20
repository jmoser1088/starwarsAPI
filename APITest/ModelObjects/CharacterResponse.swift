//
//  CharacterResponse.swift
//  APITest
//
//  Created by Admin on 12/19/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

public struct CharacterResponse: Decodable { //decodable is kind of like a blueprint that says implement these things in the struct, if it is decodable you can get the information out of the json
    public let count: Int?
    public let characters: [Character]?
    
    public enum CodingKeys: String, CodingKey {
        case count = "count"
        case characters = "results"
    }
    
    public init(from decoder: Decoder) throws { //this is where we are parsing the json to make it usable in the app
        let container = try decoder.container(keyedBy: CodingKeys.self)
        count = try container.decodeIfPresent(Int.self, forKey: .count)
        characters = try container.decodeIfPresent([Character].self, forKey: .characters)
    }
}

public struct Character: Decodable {
    let name: String?
    let height: String?
    let mass: String?
    let hair_color: String?
    let skin_color: String?
    let eye_color: String?
    let birth_year: String?
    let gender: String?
}
