//
//  NetworkAssembly.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import Foundation
import Swinject

struct NetworkAssembly: Assembly {
    func assemble(container: Container) {
        container.register(HTTPClientProtocol.self) { _ in
            URLSession(configuration: .default)
        }
        .inObjectScope(.weak)
    }
}
