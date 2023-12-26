//
//  FailedView.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 23/12/2023.
//

import SwiftUI

struct FailedView: View {
    let loginController : LoginController<AuthState>
    let state : FailedLoginState
    var body: some View {
        VStack{
            Button(action: {
                Task{
                  await   loginController.FetchUserData()
                }
                
            }, label: {
                Text("Failed with " + state.message + "click to Retry").foregroundColor(.white)
            })
            
      
        }
    }
}

