//
//  TextStyles.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 30/12/2023.
//

import Foundation
import SwiftUI

// Enum to define different text styles
enum TextStyles {
    case xs10(isBold: Bool = false , color : Color = .base1)
    case sm12(isBold: Bool = false , color : Color = .base1)
    case default14(isBold: Bool = false , color : Color = .base1)
    case title1(isBold: Bool = false , color : Color = .base1)
    case title2(isBold: Bool = false , color : Color = .base1)
    case title3(isBold: Bool = false , color : Color = .base1)
}

extension Text {
    // Private function to handle bold text based on the isBold parameter
    private func boldHandling(isBold: Bool) -> Text {
        if isBold {
            return self.fontWeight(.bold)
        }
        return self.fontWeight(.regular)
    }
    
    
    
    // Function to apply the specified text style
    func apply(style: TextStyles) -> Text {
        switch style {
        case .xs10(let isBold, let color):
            return self
                .font(Font.custom("DM Sans", size: 10))
                .foregroundColor(color)
                .boldHandling(isBold: isBold)
        case .sm12(let isBold, let color):
            return self
                .font(Font.custom("DM Sans", size: 12))
                .foregroundColor(color)
                .boldHandling(isBold: isBold)
        case .default14(let isBold, let color):
            return self
                .font(Font.custom("DM Sans", size: 14))
                .foregroundColor(color)
                .boldHandling(isBold: isBold)
        case .title1(let isBold, let color):
            return self
                .font(Font.custom("DM Sans", size: 16)) 
                .foregroundColor(color)
                .boldHandling(isBold: isBold)
        case .title2(let isBold, let color):
            return self
                .font(Font.custom("DM Sans", size: 20))
                .foregroundColor(color)
                .boldHandling(isBold: isBold)
        case .title3(let isBold, let color):
            return self
                .font(Font.custom("DM Sans", size: 24))
                .foregroundColor(color)
                .boldHandling(isBold: isBold)
        }
    }
}
