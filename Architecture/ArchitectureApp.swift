//
//  ArchitectureApp.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import SwiftUI
import Swinject

@main
struct ArchitectureApp: App {
    let container = Container(assemblies: [
        NetworkAssembly(),
        AlbumAssembly(),
    ])
    
    var body: some Scene {
        WindowGroup {
            container.rootView()
        }
    }
}
