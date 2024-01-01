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
    case xs10(isBold: Bool)
    case sm12(isBold: Bool)
    case default14(isBold: Bool)
    case title1(isBold: Bool)
    case title2(isBold: Bool)
    case title3(isBold: Bool)
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
        case .xs10(let isBold):
            return self
                .font(Font.custom("DM Sans", size: 10))
                .foregroundColor(.base1)
                .boldHandling(isBold: isBold)
        case .sm12(let isBold):
            return self
                .font(Font.custom("DM Sans", size: 12))
                .foregroundColor(.base1)
                .boldHandling(isBold: isBold)
        case .default14(let isBold):
            return self
                .font(Font.custom("DM Sans", size: 14))
                .foregroundColor(.base1)
                .boldHandling(isBold: isBold)
        case .title1(let isBold):
            return self
                .font(Font.custom("DM Sans", size: 16))
                .foregroundColor(.base1)
                .boldHandling(isBold: isBold)
        case .title2(let isBold):
            return self
                .font(Font.custom("DM Sans", size: 20))
                .foregroundColor(.base1)
                .boldHandling(isBold: isBold)
        case .title3(let isBold):
            return self
                .font(Font.custom("DM Sans", size: 24))
                .foregroundColor(.base1)
                .boldHandling(isBold: isBold)
        }
    }
}
