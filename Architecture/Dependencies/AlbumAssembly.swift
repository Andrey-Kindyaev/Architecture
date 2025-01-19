//
//  AlbumAssembly.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import Swinject

struct AlbumAssembly: Assembly {
    func assemble(container: Container) {
        container.register(AlbumRemoteRepositoryProtocol.self) { resolver in
            AlbumRemoteRepository(client: resolver.autoresolve()!)
        }
        .inObjectScope(.weak)
        
        container.register(AlbumLocalRepositoryProtocol.self) { resolver in
            AlbumLocalRepository()
        }
        .inObjectScope(.weak)
        
        container.register(AlbumInteractorProtocol.self) { resolver in
            AlbumInteractor(
                localRepository: resolver.autoresolve()!,
                remoteRepository: resolver.autoresolve()!
            )
        }
        .inObjectScope(.weak)
    }
}
