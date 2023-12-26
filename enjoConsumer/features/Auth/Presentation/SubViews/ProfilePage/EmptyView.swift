//
//  EmptyView.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 23/12/2023.
//

import SwiftUI

struct EmptyView: View {
    var loginController : LoginController<AuthState>
    var body: some View {
        VStack{
            Button(action: {
                Task{
                  await   loginController.FetchUserData()
                }
            }){
                Text("Fetch Data").foregroundColor(.white).frame(width: 200)
            }
            
            
            
        }.frame( width: 200,height: 200)
    }
}

