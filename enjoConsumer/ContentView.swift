//
//  ContentView.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 14/12/2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var router: Router
    var body: some View {
        VStack {
            Button(action: {
                
                router.navigate(to: .profilePage)
            }) {
                Text("Sign Up")
                    .font(
                        Font.custom("Manrope", size: 16)
                            .weight(.semibold)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .padding()
                
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).background(.black)
            
            .cornerRadius(10)
            .padding(EdgeInsets.init(top: 70, leading: 16, bottom: 0, trailing: 16))
            
            
    
        }
        .padding()
    }
}

#Preview {
    ContentView()
}



