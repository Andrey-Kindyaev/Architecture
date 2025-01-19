//
//  Container+ModuleView.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import SwiftUI
import Swinject

extension Container {
    func moduleView<AssembledView: View, Dependencies>(
        dependencies: @escaping (_ container: Container) throws -> Dependencies,
        @ViewBuilder view: @escaping (_ container: Container, _ dependencies: Dependencies) -> AssembledView
    ) -> some View {
        ResolvingView {
            let container = Container(parent: self)
            return (container, try dependencies(container))
        } view: { container, dependencies in
            view(container, dependencies)
        }
    }
}
