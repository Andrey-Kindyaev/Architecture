//
//  AlbumRemoteRepositoryProtocol.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

protocol AlbumRemoteRepositoryProtocol {
    func top100Albums() async throws -> [Album]
}
