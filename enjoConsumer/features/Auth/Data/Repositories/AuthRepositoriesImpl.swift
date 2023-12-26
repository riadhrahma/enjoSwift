//
//  AuthRepositoriesImpl.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 14/12/2023.
//

import Foundation


struct AuthRepositoriesImpl : AuthRepositories {
    func fetchUserData(completion: @escaping (Result<UserResponse, Error>) -> Void) async {
       await  remoteDataSource.fetchUserDataWithAlmofire(completion:
                                                            completion)
    }
    
    let remoteDataSource : AuthRemoteDataSource
    init(remoteDataSource: AuthRemoteDataSource) {
        self.remoteDataSource = remoteDataSource
    }
    func login(userName: String, password: String, result: @escaping (String?, Any?) -> Void)  {
         remoteDataSource.login(userName: userName, password: password, result: result)
    }
    
    
    
    
    
    
}
