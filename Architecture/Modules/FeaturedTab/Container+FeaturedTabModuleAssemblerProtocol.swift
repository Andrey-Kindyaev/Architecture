//
//  Container+FeaturedTabModuleAssemblerProtocol.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import SwiftUI
import Swinject

extension Container: FeaturedTabModuleAssemblerProtocol {
    func featuredTabView() -> some View {
        moduleView { container in
            FeaturedTabViewModel(
                albumInteractor: container.autoresolve()!
            )
        } view: { container, dependencies in
            FeaturedTabView(viewModel: dependencies)
        }
    }
}
