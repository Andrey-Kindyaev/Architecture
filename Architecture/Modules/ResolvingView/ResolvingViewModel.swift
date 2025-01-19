//
//  ResolvingViewModel.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import Foundation

final class ResolvingViewModel<Dependencies>: ObservableObject {
    let result: Result<Dependencies, Error>
    
    init(
        dependencies: @escaping () throws -> Dependencies
    ) {
        result = Result(catching: { try dependencies() })
    }
}
