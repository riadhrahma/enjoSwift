//
//  MainButton.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 7/1/2024.
//

import SwiftUI

struct MainButton: View {
    let text : String
    var body: some View {
        Button(action: {}) {
            Text(text)
                .apply(style: .default14(isBold: false, color: .white))
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .padding()
            
        } 
        .frame(maxWidth: .infinity).background(.success)
        
        .cornerRadius(10)
        .padding(EdgeInsets.init(top: 70, leading: 16, bottom: 0, trailing: 16))
        
        
    }

    
}

#Preview {
    MainButton(text: "Checkout Now")
}
