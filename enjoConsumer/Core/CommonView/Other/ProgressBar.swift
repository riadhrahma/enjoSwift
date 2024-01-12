//
//  ProgressBar.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 6/1/2024.
//

import SwiftUI

struct ProgressBar: View {
    let progressValue : Double
    var body: some View {
        ProgressView("",value: progressValue ).progressViewStyle(CustomProgressViewStyle( height: 20))
    }
}

#Preview {
    ProgressBar(progressValue: 0.4).padding()
}


struct CustomProgressViewStyle: ProgressViewStyle {
    
    var height: CGFloat // Adjus t the height here

    func makeBody(configuration: Configuration) -> some View {
        GeometryReader { geometry in
            HStack {
                

                RoundedRectangle(cornerRadius: height / 2)
                    .frame(height: height)
                    .foregroundColor(.success)
                    .overlay(
                        RoundedRectangle(cornerRadius: height / 2)
                            .strokeBorder(Color.secondary, lineWidth: 0)
                    )
                    .frame(width: geometry.size.width * CGFloat(configuration.fractionCompleted ?? 0))
                Spacer()
            }.frame( alignment: .leading).background(Color(red: 0.95, green: 0.95, blue: 0.98)).cornerRadius(25).frame(height: 15)
        }
    }
}
