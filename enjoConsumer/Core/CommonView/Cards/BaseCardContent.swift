//
//  BaseCardContent.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 6/1/2024.
//

import SwiftUI

struct BaseCardContent: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6){
            // Typography / Regular / Text SM 12
            Text("Declarative interfaces for any Apple Devices")
                .apply(style: .sm12(isBold: false))
              .frame(width: 200, alignment: .topLeading)
            
            // Typography / Bold / Text SM 12
            Text("IDR 850.000")
                .apply(style: .sm12(isBold: true))
              .frame(width: 200, alignment: .topLeading)
            HStack{
                Image("Star")
                
                // Typography / Bold / Text XS 10
                Text("4.5")
                    .apply(style: .xs10(isBold: true))
                
                Image("Separator")
                .frame(width: 3, height: 3)
                .background(Color(red: 0.57, green: 0.57, blue: 0.62))
                
                // Typography / Regular / Text XS 10
                Text("By Sarah William")
                    .apply(style: .xs10(isBold: false))
                
                // Typography / Regular / Text XS 10
                Image("Separator")
                .frame(width: 3, height: 3)
                .background(Color(red: 0.57, green: 0.57, blue: 0.62))
                
                // Typography / Regular / Text XS 10
                Text("All Level")
                    .apply(style: .xs10(isBold: false))
                
                Spacer()
            }
        }
    }
}
 
#Preview {
    BaseCardContent().padding()
}
