//
//  CardProgress.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 4/1/2024.
//

import SwiftUI

struct CardProgress: View {
    var body: some View {
       
        VStack(alignment: .leading, spacing: 4) {
            Text("Current Progress")
                  .apply(style: .xs10( color: .base3))
            Text("50%")
                  .apply(style: .default14(  color: .base1))
        }
        
    }
}

#Preview {
    CardProgress()
}
