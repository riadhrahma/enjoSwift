//
//  CourseItemWithLeftImage.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 30/12/2023.
//

import SwiftUI

struct CourseItemWithLeftImage2: View {
    var body: some View {
        HStack {
            Image("ImagePreview").padding(EdgeInsets(top : 0, leading: 0, bottom : 0, trailing: 20))
            VStack(alignment: .leading, spacing: 6){
                // Typography / Regular / Text SM 12
                Text("Declarative interfaces for any Apple Devices")
                    .apply(style: .sm12(isBold: false))
                    .paddingOnly(bottom : 6)
                 
                // Typography / Bold / Text SM 12
                Text("IDR 850.000")
                    .apply(style: .sm12(isBold: true))
                  .frame(width: 200, alignment: .topLeading)
               
            }
            Spacer()
            
            
            
        }.padding()
    }
}

#Preview {
    CourseItemWithLeftImage2()
}
