//
//  AlbumInteractorProtocol.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

protocol AlbumInteractorProtocol {
    func albums() async throws -> [Album]
}
