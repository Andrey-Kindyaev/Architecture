//
//  AlbumLocalRepository.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import Foundation

final class AlbumLocalRepository {
    static private var albumsPath: URL {
        FileManager
            .default
            .urls(for: .documentDirectory, in: .userDomainMask)[0]
            .appending(path: "albums", directoryHint: .isDirectory)
    }
}

extension AlbumLocalRepository: AlbumLocalRepositoryProtocol {
    func save(albums: [Album]) async throws {
        let data = try JSONEncoder().encode(albums)
        try data.write(to: Self.albumsPath, options: [.atomic])
    }
    
    func albums() async throws -> [Album] {
        let data = try Data(contentsOf: Self.albumsPath)
        return try JSONDecoder().decode([Album].self, from: data)
    }
}
