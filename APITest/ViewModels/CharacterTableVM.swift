//
//  CharacterTableVM.swift
//  APITest
//
//  Created by Admin on 12/18/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

class CharacterTableVM {
    
    // MARK: - Properties
    let networking = Networking()
    var characters = [Character]()
    
    
    func fetchCharacters(completion: @escaping () -> Void) {
        networking.fetchCharactersFromAPI() {
            (charactersReturned) in
            self.characters = charactersReturned
            completion()
        }
    }
}
