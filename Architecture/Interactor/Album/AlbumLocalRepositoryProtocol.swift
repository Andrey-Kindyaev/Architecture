//
//  AlbumLocalRepositoryProtocol.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

protocol AlbumLocalRepositoryProtocol {
    func save(albums: [Album]) async throws
    func albums() async throws -> [Album]
}
