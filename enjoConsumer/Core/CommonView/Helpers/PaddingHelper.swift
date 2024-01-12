//
//  PaddingHelper.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 4/1/2024.
//

import Foundation



import SwiftUI

enum Symmetric {
    case horizontal(padding: CGFloat)
    case vertical(padding: CGFloat)
}

extension View {
    func paddingOnly(top: CGFloat = 0.0, bottom: CGFloat = 0.0, right: CGFloat = 0.0, left: CGFloat = 0.0) -> some View {
        return padding(EdgeInsets(top: top, leading: left, bottom: bottom, trailing: right))
    }
    
    func paddingSymmetric(padding: Symmetric) -> some View {
        switch padding {
        case .horizontal(let padding):
            return self.padding(EdgeInsets(top: 0, leading: padding, bottom: 0, trailing: padding))
        case .vertical(let padding):
            return self.padding(EdgeInsets(top: padding, leading: 0, bottom: padding, trailing: 0))
        }
    }
    
    func paddingAll(padding : CGFloat ) -> some View {
        return self.padding(EdgeInsets(top: padding, leading: padding, bottom: padding, trailing: padding))
    }
    
    
    
}
