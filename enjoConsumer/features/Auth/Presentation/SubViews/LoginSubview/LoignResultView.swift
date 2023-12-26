//
//  LoignResultView.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 14/12/2023.
//

import SwiftUI

struct LoginResultView: View {
    
     var controller: LoginController<AuthState>
    var body: some View {
        Text( String(describing : controller.state))
            .font(
                Font.custom("Manrope", size: 16)
                    .weight(.semibold)
            )
            .multilineTextAlignment(.center)
            .foregroundColor(Color(red: 0.24, green: 0.24, blue: 0.24))
    }
}


#Preview {
    LoginResultView(controller:LoginController<AuthState>())
}
