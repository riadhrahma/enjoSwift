//
//  BottomNavigation.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 6/1/2024.
//

import SwiftUI

struct BottomNavigation: View  {
  
    
    @State private var currentIndex: Int = 1
    
    var body: some View {
        HStack{
            BottomNavigationItem(currentIndex: $currentIndex, itemIndex: 0, itemImage: "home", itemText: "Home", action: {
                currentIndex = 0
            })
            Spacer()
            BottomNavigationItem(currentIndex: $currentIndex, itemIndex: 1, itemImage: "search", itemText: "Explore", action: {
                currentIndex = 1
            })
            Spacer()
            BottomNavigationItem(currentIndex: $currentIndex, itemIndex: 2, itemImage: "play", itemText: "Courses", action: {
                currentIndex = 2
            })
            Spacer()
            BottomNavigationItem(currentIndex: $currentIndex, itemIndex: 3, itemImage: "user", itemText: "Account", action: {
                currentIndex = 3
            })
          
        }
    }
}

struct BottomNavigationItem: View {
    @Binding var currentIndex: Int
    let itemIndex: Int
    let itemImage: String
    let itemText: String
    let action : ()-> Void
    
    var isSelected: Bool {
        return currentIndex == itemIndex
    }
    
    var itemColor: Color {
        return isSelected ? .success: .base1
    }
    
    var body: some View {
        Button(action: action){
            VStack {
                Image(itemImage)
                    .foregroundColor(itemColor)
                
                Text(itemText)
                    .apply(style: .sm12(isBold: false, color: itemColor))
            }
        }
    }
}



#Preview {
    BottomNavigation()
}
