//
//  Constants.swift
//  APITest
//
//  Created by Admin on 12/18/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

struct Constants {
    
    // MARK: - Segue Identifiers
    static let characterTableSegue = "CharacterTableSegue"  //the static says you can reference this variable without making a reference in that file
    static let CharacterDetailSegue = "CharacterDetailSegue"
    
    // MARK: - Cell Identifiers
    static let characterCell = "CharacterCell"
    
    // MARK: - Networking
    static let get = "Get"
    static let applicationJsonValue = "Application/json"
    static let contentTypeKey = "Custom-Type"
    
}

enum LoginResult {
    case success
    case fail
}
