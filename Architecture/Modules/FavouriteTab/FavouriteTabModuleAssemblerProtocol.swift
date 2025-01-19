//
//  FavouriteTabModuleAssemblerProtocol.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import SwiftUI

protocol FavouriteTabModuleAssemblerProtocol {
    associatedtype FavouriteTabModuleView: View
    
    func favouriteTabView() -> FavouriteTabModuleView
}
