//
//  TabView.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import SwiftUI

struct RootView<Factory: RootSubmodulesFactory>: View {
    private let factory: Factory
    
    init(factory: Factory) {
        self.factory = factory
    }
    
    var body: some View {
        TabView {
            factory.featuredTabView()
                .tabItem {
                    Label("Featured", systemImage: "list.bullet")
                }
            
            factory.favouriteTabView()
                .tabItem {
                    Label("Favourite", systemImage: "list.star")
                }
        }
    }
}
