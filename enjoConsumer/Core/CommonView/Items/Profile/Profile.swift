//
//  Profile.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 9/1/2024.
//

import SwiftUI

struct Profile: View {
    var image : String 
    var icon : Bool
    var title : String
    var subTitle : String
    var body: some View {
        HStack{
            Image(image).aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40) // Adjust the size as needed
                .clipShape(Circle())
            
            VStack(alignment : .leading){
                Text(title).apply(style: .sm12(isBold: false, color: .base3))
                Text(subTitle).apply(style: .default14(isBold: false, color: .base1))
            }
            Spacer()
            if icon {
                Image(systemName: "bell")
            }
        }
    }
}

#Preview {
    Profile(image :"ProfilePicture",icon: false, title: "Welcome back", subTitle: "Poetri Lazuardi ")
}
