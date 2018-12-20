//
//  LoginVM.swift
//  APITest
//
//  Created by Admin on 12/18/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

struct LoginVM {
    
    var username = "jmoser1088"
    var password = "p@ssw0rd" //here we are hard coding a value or a default value
    
    func attemptLogin(username: String, password: String, completionHandler: (LoginResult) -> Void) {
        if username == self.username && password == self.password {
            completionHandler(.success)
        } else {
            completionHandler(.fail)
        }
    }
} //always start with a struct until you know it needs to be a class

//eliminate as much strings as possible to avoid errors
