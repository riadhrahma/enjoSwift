//
//  LoadingView.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 23/12/2023.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack{
            ProgressView().padding()
            Text("Loading...")
        }
    }
}

#Preview {
    LoadingView()
}
