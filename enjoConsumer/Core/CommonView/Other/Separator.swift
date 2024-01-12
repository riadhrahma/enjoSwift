//
//  Separator.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 6/1/2024.
//

import SwiftUI

struct Separator: View {
    var body: some View {
        HStack{
            Spacer()
            
        }.frame(height: 1).background(.base3)
    }
}

#Preview {
    Separator().padding()
}
