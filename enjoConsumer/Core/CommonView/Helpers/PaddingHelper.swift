//
//  PaddingHelper.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 4/1/2024.
//

import Foundation
import SwiftUI

extension View {
    
    func paddingOnly(top : CGFloat = 0.0, bottom : CGFloat = 0.0 , right : CGFloat = 0.0 , left : CGFloat = 0.0) -> some View {
        return self.padding(EdgeInsets(top: top, leading: left, bottom: bottom, trailing: right))
    }
}
