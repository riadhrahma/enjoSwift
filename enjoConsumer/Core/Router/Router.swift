//
//  router.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 14/12/2023.
//

import Foundation
import SwiftUI
final class Router: ObservableObject {
    
    public enum Destination: Codable, Hashable {
        case login
        case profilePage
        
    }
    
    @Published var navPath = NavigationPath()
    
    func navigate(to destination: Destination) {
        navPath.append(destination)
    }
    
    func navigateBack() {
        navPath.removeLast()
    }
    
    func navigateToRoot() {
        navPath.removeLast(navPath.count)
    }
}






