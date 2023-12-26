//
//  LoginController.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 14/12/2023.
//

import Foundation


class LoginController<T>: ObservableObject {
    
    let repos : AuthRepositoriesImpl = AuthRepositoriesImpl(remoteDataSource: AuthRemoteDataSource())
    @Published var state : AuthState = AuthStateInit(description: "AuthStateInit")
    
    
    
    func Login(userName : String , password : String )    {
        self.state = LoadingState(description: "LoadingState")
          repos.login(userName: userName, password: password, result: { error , result in
            let errorIsNull : Bool = error == nil
            switch errorIsNull {
            case false :
                print(error!.debugDescription)
                self.state = FailedLoginState(message: error!.debugDescription, description: "FailedLoginState")
                break
                
            case true:
                print(result ?? "some result ")
               // self.state = SuccussLoginState(description: "SuccussLoginState")
                break
            }
            
      })
    }
    
    
    @MainActor
    func FetchUserData()  async{
        self.state = LoadingState(description: "LoadingState")
        await repos.fetchUserData(completion: {
            result in
            switch result {
            case .success(let userData):
                print("opration successd")
                self.state = SuccussLoginState(description: (userData.results ?? [])!.first!.id!.value ?? "no value yet", userData: userData)
                break
            case .failure(let error):
                print(error.localizedDescription)
                self.state = FailedLoginState(message: error.localizedDescription, description: "StateFailed")
            }
        })
    }
    
    
    
    
    
}
