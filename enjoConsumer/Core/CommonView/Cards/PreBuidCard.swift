//
//  PreBuidCard.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 6/1/2024.
//

import SwiftUI

struct PreBuidCard: View {
    var body: some View {
        VStack {
            CourseItemWithImage2()
            
            HStack{
                CardProgressWithIcon()
                Spacer()
                CardProgressWithIcon().paddingOnly(right : 10)
            }.paddingSymmetric(padding: .vertical(padding: 15))
            ProgressBar(progressValue: 0.2).frame(height: 15)
            
            HStack(alignment: .firstTextBaseline){
                CardDetails()
                Spacer()
                CardDetails().paddingOnly(right: 20)
            }.paddingSymmetric(padding: .vertical(padding: 15))
             
            
        }.padding().background(Color(red: 0.99, green: 0.99, blue: 1)).cornerRadius(10)
    }
}

#Preview {
    PreBuidCard()
}
