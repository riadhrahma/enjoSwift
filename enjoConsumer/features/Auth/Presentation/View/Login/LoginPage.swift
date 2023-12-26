//
//  LoginPage.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 14/12/2023.
//

import SwiftUI

struct LoginPage: View {
    @ObservedObject var loginController: LoginController = LoginController<AuthState>()
    @State  private var userName : String = "kminchelle"
    @State private var  password : String = "0lelplR"
    
    
    
    func StringResult  (state : AuthState )-> String {
    switch state {
    case  is FailedLoginState :
        return (state as! FailedLoginState).message
    default :
       return String(describing: state)
    }
    }
    
    var body: some View {
        VStack{
            Text("Login")
                .font(
                    Font.custom("Manrope", size: 16)
                        .weight(.semibold)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.24, green: 0.24, blue: 0.24))
            
            
            TextField("User Name", text: $userName)
                .cornerRadius(9).padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 9)
                        .inset(by: 0.5)
                        .stroke(.brown, lineWidth: 1)
                ).padding()
            
            SecureField("Password", text: $password).cornerRadius(9).padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 9)
                        .inset(by: 0.5)
                        .stroke(.brown, lineWidth: 1)
                ).padding()
            
            
            
            Text( StringResult(state: loginController.state))
                .font(
                    Font.custom("Manrope", size: 16)
                        .weight(.semibold)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.24, green: 0.24, blue: 0.24))
            
            
            
            
            Button(action: {
                Task {
                         
                               // Perform an asynchronous operation, e.g., a network request
                           await        loginController.FetchUserData()
                               
                           
                       }
                 
            }) {
                Text("Sign in")
                    .font(
                        Font.custom("Manrope", size: 16)
                            .weight(.semibold)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding()
                
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).background(.brown)
            
            .cornerRadius(10)
            .padding(EdgeInsets.init(top: 70, leading: 16, bottom: 0, trailing: 16))
            
            
        
            
            
            
        }}
    
    
    
}

#Preview {
    LoginPage()
}

