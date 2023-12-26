//
//  AuthRepositories.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 14/12/2023.
//

import Foundation


protocol AuthRepositories {
    func login(userName : String , password : String,  result : @escaping (String? , Any?)-> Void) async
    
    func fetchUserData(completion: @escaping (Result<UserResponse, Error>) -> Void) async
}
