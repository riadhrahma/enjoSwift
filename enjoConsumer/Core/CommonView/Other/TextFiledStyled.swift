//
//  TextFiledStyled.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 11/1/2024.
//

import SwiftUI

struct TextFiledStyled: View {
    @State var text : String = ""
    let keyBoardType : UIKeyboardType
    var body: some View {
        TextField("Label", text :  $text).textFieldStyle(CustomTextFiled()).keyboardType(keyBoardType)
    }
}

#Preview {
    TextFiledStyled(keyBoardType: .emailAddress).padding()
}

enum CustomTExtFieldType {
    case withoutIcon
    case withIconLeft
    case withIconRight
}


struct CustomTextFiled : TextFieldStyle {
    let type : CustomTExtFieldType = .withIconRight
    func _body(configuration: TextField<_Label>) -> some View {
        
        HStack {
            if type == .withIconLeft{
                Image(systemName: "magnifyingglass").paddingOnly(left : 15)
            }
            configuration

                       .padding(15)
                   .background(RoundedRectangle(cornerRadius: 10).strokeBorder(.transpanent, lineWidth: 0))
            
            if type == .withIconRight{
                Image(systemName: "magnifyingglass").paddingOnly(right : 15)
            }
        }.background(Color(red: 0.99, green: 0.99, blue: 1)).cornerRadius(10)
               
        
       }
    
    
}
