//
//  AlbumRemoteRepository.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import Foundation

final class AlbumRemoteRepository {
    private let client: HTTPClientProtocol
    
    init(client: HTTPClientProtocol) {
        self.client = client
    }
}

extension AlbumRemoteRepository: AlbumRemoteRepositoryProtocol {
    func top100Albums() async throws -> [Album] {
        let url = URL(string: "https://rss.marketingtools.apple.com/api/v2/us/music/most-played/100/albums.json")!
        let (data, _) = try await client.data(for: URLRequest(url: url))
        return try JSONDecoder().decode(AlbumsListResponse.self, from: data).albums
    }
}
