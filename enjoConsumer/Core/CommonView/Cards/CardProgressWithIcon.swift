//
//  CardProgress.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 4/1/2024.
//

import SwiftUI

struct CardProgressWithIcon: View {
    var body: some View {
       
        HStack {
            Image("award").padding().background(Color(red: 0.95, green: 0.95, blue: 0.98)).cornerRadius(10).paddingOnly(right: 10)
            VStack(alignment: .leading, spacing: 4) {
                Text("Current Progress")
                      .apply(style: .xs10( color: .base3))
                Text("50%")
                      .apply(style: .default14(   color: .base1))
            }
        } 
        
    }
}

#Preview {
    CardProgressWithIcon()
}
