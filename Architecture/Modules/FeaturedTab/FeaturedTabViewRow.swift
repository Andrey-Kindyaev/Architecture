//
//  FeaturedTabViewRow.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import SwiftUI

struct FeaturedTabViewRow: View {
    let album: Album
    
    var body: some View {
        HStack {
            AsyncImage(url: album.artworkURL) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                ProgressView()
            }
            .frame(width: 50, height: 50)
            .clipShape(RoundedRectangle(cornerRadius: 5))
            
            VStack(alignment: .leading) {
                Text(album.title)
                    .font(.body)
                    .lineLimit(1)
                Text(album.artistName)
                    .font(.footnote)
                    .foregroundStyle(.placeholder)
                    .lineLimit(1)
            }
        }
    }
}
