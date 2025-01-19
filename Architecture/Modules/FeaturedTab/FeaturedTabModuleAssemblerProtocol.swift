//
//  FeaturedTabModuleAssemblerProtocol.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import SwiftUI

protocol FeaturedTabModuleAssemblerProtocol {
    associatedtype FeaturedTabModuleView: View
    
    func featuredTabView() -> FeaturedTabModuleView
}
