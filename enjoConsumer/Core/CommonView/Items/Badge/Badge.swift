//
//  Badge.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 6/1/2024.
//

import SwiftUI

private struct BadgeNormal: View {
    let style : BadgeStyle
    private var styleParams : (backgroundColor: Color,textColor: Color,  text: String, type : BadgeType)  {
    return     BadgeParameters.badgeParams(badgeType: style)
    }
    var body: some View {
        Text(styleParams.text).apply(style: .xs10(isBold: false, color: styleParams.textColor)).paddingAll(padding: 12).background(styleParams.backgroundColor).cornerRadius(30)
    }
}


private struct BadgeOutlined: View {
    let style : BadgeStyle
    private var styleParams : (backgroundColor: Color, textColor : Color,  text: String, type : BadgeType)  {
    return     BadgeParameters.badgeParams(badgeType: style)
    }
    var body: some View {
        Text(styleParams.text).apply(style: .xs10(isBold: false, color: styleParams.textColor)).paddingAll(padding: 12).cornerRadius(30).overlay(
            RoundedRectangle(cornerRadius: 30).inset(by: 0.5).stroke(styleParams.textColor))
    }
}

struct Badge: View {
    let style : BadgeStyle
    private var  isOutlined : Bool {
        switch style {
        case .primary(let type):
            return type == BadgeType.outlined
        case .secondary(let type):
            return type == BadgeType.outlined
        case .success(let type):
            return type == BadgeType.outlined
        case .warning(let type):
            return type == BadgeType.outlined
        case .error(let type):
            return type == BadgeType.outlined
        case .defaultCard(let type):
            return type == BadgeType.outlined
       
        }
        
    }
    
    var body: some View {
        if isOutlined {
            BadgeOutlined(style: style)
        } else {
            BadgeNormal(style: style)
        }
    }
}

#Preview {
    Badge(style:  .success(type: .outlined))
}




enum BadgeType {
    case normal
    case outlined
}

enum BadgeStyle {
    case primary(type: BadgeType)
    case secondary(type: BadgeType)
    case success(type: BadgeType)
    case warning(type: BadgeType)
    case error(type: BadgeType)
    case defaultCard(type: BadgeType)
}

struct BadgeParameters {
    
    
    static func badgeParams(badgeType: BadgeStyle) -> (backgroundColor: Color, textColor: Color,  text: String, type : BadgeType) {
        switch badgeType {
        case .primary(type: let type):
            return (.primaryLight, .primary , "Badge" ,type )
        case .secondary(type: let type):
            return (.secondaryLight,.secondary,  "Badge" ,type)
        case .success(type: let type):
            return (.successLight,.success,  "Badge" ,type)
        case .warning(type: let type):
            return (.warningLight,.warning,  "Badge",type)
        case .error(type: let type):
            return (.errorLight,.error,  "Badge",type)
        case .defaultCard(type: let type):
            return (.primaryLight, .primary,  "Badge",type)
        }
    }
}
