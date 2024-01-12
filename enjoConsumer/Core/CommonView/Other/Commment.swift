//
//  AuthorCommment.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 11/1/2024.
//

import SwiftUI

struct Commment: View {
    let profileName : String
    let isAuhtor : Bool
    let authorText : String = "Author"
    let bodyText  : String
    let likeCount : Int
    var body: some View {
        HStack(alignment : .top){
            Image("ProfilePicture").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).frame(width: 40, height: 40).paddingOnly(right : 10)
            
            VStack(alignment : .leading){
                HStack(alignment : .top) {
                    Text(profileName).apply(style: .sm12(isBold: true, color: Color(red: 0.39, green: 0.38, blue: 1))).paddingOnly(bottom: 3)
                    if isAuhtor {
                        Text(authorText).apply(style: .xs10(isBold: false, color: .white) ).paddingSymmetric(padding: .horizontal(padding: 10.0)).background( Color(red: 1, green: 0.51, blue: 0.51)).cornerRadius(30)
                    }
                    
                }
                
                Text(bodyText).apply(style: .sm12(isBold: false, color: .base1))
                
                HStack(alignment : .center){
                    
                    Text("V ote (\(likeCount))").apply(style: .xs10(isBold: false, color: .base3))
                    Image(systemName: "hand.thumbsup").resizable().frame(width: 15, height: 15).foregroundColor(.base3)
                }
            }
        }
    }
}

#Preview {
    Commment(profileName: "Poetri Lazuzardi", isAuhtor: true, bodyText:  "Ultrices vitae auctor eu augue. Tincidunt id aliquet risus.", likeCount: 13)
}
