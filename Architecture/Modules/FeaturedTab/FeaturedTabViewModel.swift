//
//  FeaturedTabViewModel.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import Foundation

final class FeaturedTabViewModel {
    private let albumInteractor: AlbumInteractorProtocol
    
    @Published var state: FeaturedTabViewState = .initial
    
    init(albumInteractor: AlbumInteractorProtocol) {
        self.albumInteractor = albumInteractor
    }
}

extension FeaturedTabViewModel: FeaturedTabViewModelProtocol {
    func onFirstAppear() {
        Task {
            state = .loading
            do {
                state = .albums(try await albumInteractor.albums())
            } catch {
                // TODO: handle errors
                state = .error
            }
        }
    }
}
