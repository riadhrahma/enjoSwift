//
//  enjoConsumerApp.swift
//  enjoConsumer
//
//  Created by Riadh Gharbi on 14/12/2023.
//

import SwiftUI

@main
struct RoutingApp: App {
    @ObservedObject var router = Router()
    init() {
            // Hide back button globally
        let appearance = UINavigationBarAppearance()
                appearance.configureWithOpaqueBackground()
                appearance.backgroundColor = .clear
                appearance.backgroundEffect = nil
                UINavigationBar.appearance().standardAppearance = appearance
                UINavigationBar.appearance().compactAppearance = appearance
                UINavigationBar.appearance().scrollEdgeAppearance = appearance
                UINavigationBar.appearance().isTranslucent = false
        }
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navPath) {
                ContentView()
                    .navigationDestination(for: Router.Destination.self) { destination in
                        switch destination {
                        case .login:
                            LoginPage()
                            
                        case .profilePage:
                            ProfilePage()
                        }
                    }
                    .environmentObject(router)
            }
        }
    }
    
}




