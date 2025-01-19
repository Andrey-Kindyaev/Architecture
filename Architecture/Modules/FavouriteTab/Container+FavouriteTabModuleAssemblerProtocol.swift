//
//  Container+FavouriteTabModuleAssemblerProtocol.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import SwiftUI
import Swinject

extension Container: FavouriteTabModuleAssemblerProtocol {
    func favouriteTabView() -> some View {
        FavouriteTabView()
    }
}
