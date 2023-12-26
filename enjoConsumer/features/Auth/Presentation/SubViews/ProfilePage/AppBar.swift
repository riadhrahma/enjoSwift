//
//  AppBar.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 23/12/2023.
//

import SwiftUI

struct AppBar: View {
 var loginController: LoginController<AuthState>
    
    var body: some View {
        HStack{
            Button(action : {
              
            }){
                Image(systemName: "arrowshape.backward.fill").foregroundColor(.white).padding()
            }
            
            
            
            
            Spacer()
            Text("Profile").foregroundStyle(.background).padding()
            Spacer()
            Button(action : {
                Task{
                    await loginController.FetchUserData(
                        )
                }
            }){
                Image(systemName: "repeat").foregroundColor(.white).padding()
            }
            
           
            
            
        }
    }
}


