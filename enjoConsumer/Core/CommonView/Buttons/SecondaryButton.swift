//
//  SecondaryButton.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 9/1/2024.
//

import SwiftUI

struct SecondaryButton: View {
    let backgroundColor : Color
    let text : String
    let action : ()-> Void
    var body: some View {
        Button(action: action) {
            Text("Sign Up")
                .apply(style: .default14(isBold: false, color: .white))
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
               
                .padding()
            
        }
        .background(backgroundColor)
        
        .cornerRadius(10)
        .padding(EdgeInsets.init(top: 70, leading: 16, bottom: 0, trailing: 16))
        
        
    
    }
}

#Preview {
    SecondaryButton(backgroundColor: .success , text: "Hello" , action:  {
        print("button is clicked")
    })
}
