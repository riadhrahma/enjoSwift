//
//  CardDetails.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 4/1/2024.
//

import SwiftUI

struct CardDetails: View {
    var body: some View {
        HStack{
            Text("Current Progress").apply(style: .xs10(color : .base3))
            Text("50%").apply(style: .default14(isBold: false, color: .base1))
        }
    }
}

#Preview {
    CardDetails()
}
 
 
