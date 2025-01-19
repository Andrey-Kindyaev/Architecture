//
//  RootModuleAssemblerProtocol.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import SwiftUI

protocol RootModuleAssemblerProtocol {
    associatedtype RootModuleView: View
    
    func rootView() -> RootModuleView
}
