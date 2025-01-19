//
//  Container+RootModuleAssemblerProtocol.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import SwiftUI
import Swinject

extension Container: RootModuleAssemblerProtocol {
    func rootView() -> some View {
        RootView(factory: self)
    }
}
