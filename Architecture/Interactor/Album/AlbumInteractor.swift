//
//  AlbumInteractor.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

final class AlbumInteractor {
    private let localRepository: AlbumLocalRepositoryProtocol
    private let remoteRepository: AlbumRemoteRepositoryProtocol
    
    init(
        localRepository: AlbumLocalRepositoryProtocol,
        remoteRepository: AlbumRemoteRepositoryProtocol
    ) {
        self.localRepository = localRepository
        self.remoteRepository = remoteRepository
    }
}

extension AlbumInteractor: AlbumInteractorProtocol {
    func albums() async throws -> [Album] {
        let albums: [Album]
        do {
            albums = try await remoteRepository.top100Albums()
        } catch {
            return try await localRepository.albums()
        }
        try await localRepository.save(albums: albums)
        return albums
    }
}
