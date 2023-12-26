//
//  ProfilePage.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 23/12/2023.
//

import SwiftUI

struct ProfilePage: View {
    @ObservedObject var loginController: LoginController = LoginController<AuthState>()
    
    var body: some View {
        VStack{
            switch loginController.state {
            case is LoadingState :
                LoadingView()
            case is SuccussLoginState:
                VStack {
                    ProfileStaticView(loginController: loginController, userData: (loginController.state as! SuccussLoginState).userData )
                    
                  
                }
                
            case is FailedLoginState :
                FailedView(loginController: loginController, state: (loginController.state as? FailedLoginState)!)
                
            
            default:
                EmptyView(loginController: loginController)
            }
            
            
           
           
        }.background(.blue).navigationBarHidden(true).cornerRadius(20)
      
            Spacer()
       
        
    }
}

#Preview {
    ProfilePage().background(.blue)
}
