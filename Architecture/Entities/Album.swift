//
//  Album.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import Foundation

struct Album: Identifiable, Codable {
    private enum CodingKeys: String, CodingKey {
        case id
        case title = "name"
        case artistName
        case artworkURL = "artworkUrl100"
        case albumURL = "url"
        case genres
    }
    
    struct Genre: Codable {
        private enum CodingKeys: String, CodingKey {
            case id = "genreId"
            case name
        }
        
        let id: String
        let name: String
    }
    
    let id: String
    let title: String
    let artistName: String
    let artworkURL: URL
    let albumURL: URL
    let genres: [Genre]
}
