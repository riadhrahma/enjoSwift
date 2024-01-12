import SwiftUI

struct CardImage: View {
    let cardImageType: CardImageType
    
    private var cardImageParams: (color: Color, image: String?, size: CGFloat) {
        return CardImageParameters.cardImageParams(cardType: cardImageType)
    }
    
    var body: some View {
        
        
        RoundedRectangle(cornerRadius: 15).fill(.transpanent)
            .frame(width: cardImageParams.size , height: cardImageParams.size)
            .background(cardImageParams.color).cornerRadius(15)
    }
}


#Preview {
    CardImage(cardImageType: .error(size: .small))
    
}
enum CardImageSize {
    case normal
    case small
}

enum CardImageType {
    case primary(size: CardImageSize)
    case secondary(size: CardImageSize)
    case success(size: CardImageSize)
    case warning(size: CardImageSize)
    case error(size: CardImageSize)
    case defaultCard(size: CardImageSize)
}

struct CardImageParameters {
    private static func cardSize(size: CardImageSize) -> CGFloat {
        switch size {
        case .normal:
            return 75
        case .small:
            return 60 
        }
    }
    
    static func cardImageParams(cardType: CardImageType) -> (color: Color, image: String?, size: CGFloat) {
        switch cardType {
        case .primary(size: let size):
            return (.primary, nil, cardSize(size: size))
        case .secondary(size: let size):
            return (.secondary, nil, cardSize(size: size))
        case .success(size: let size):
            return (.success, nil, cardSize(size: size))
        case .warning(size: let size):
            return (.warning, nil, cardSize(size: size))
        case .error(size: let size):
            return (.error, nil, cardSize(size: size))
        case .defaultCard(size: let size):
            return (.primary, nil, cardSize(size: size))
        }
    }
}
