//
//  FeaturedTabViewModelProtocol.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import Foundation

enum FeaturedTabViewState {
    case initial
    case loading
    case albums([Album])
    case error
}

@MainActor protocol FeaturedTabViewModelProtocol: ObservableObject {
    var state: FeaturedTabViewState { get }
    
    func onFirstAppear()
}
