//
//  AuthState.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 14/12/2023.
//

import Foundation

protocol AuthState : CustomStringConvertible{
    
}


struct AuthStateInit : AuthState {
    var description: String = "AuthStateInit"
    
    
}


struct LoadingState : AuthState {
    var description: String = "LoadingState"
    
    
}

struct SuccussLoginState : AuthState {
    var description: String = "SuccussLoginState"
    var userData: UserResponse
    
    
}

struct FailedLoginState : AuthState {
    var description: String = "FailedLoginState"
    let message : String
    
    init(message: String, description : String) {
        self.message = message
        self.description = message
    }
}
