//
//  SvgView.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 30/12/2023.
//

import SwiftUI


struct Svg:  View {
    let fileName : String
    
    var body: some View {
        Image("Star")
    }
    
}


#Preview {
    Svg(fileName: "Star")
}
