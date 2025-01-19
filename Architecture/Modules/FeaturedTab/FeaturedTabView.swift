//
//  FeaturedTabView.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import SwiftUI

struct FeaturedTabView<ViewModel: FeaturedTabViewModelProtocol>: View {
    @ObservedObject private var viewModel: ViewModel
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationStack {
            Group {
                switch viewModel.state {
                case .initial:
                    Color.clear
                    
                case .loading:
                    ProgressView("Loading albums...")
                    
                case .albums(let albums):
                    List {
                        ForEach(albums, content: FeaturedTabViewRow.init)
                            .listSectionSeparator(.hidden, edges: .top)
                    }
                    .listStyle(.plain)
                    
                case .error:
                    Text("Loading error occurs")
                }
            }
            .navigationTitle("German Music")
        }
        .onFirstAppear(perform: viewModel.onFirstAppear)
    }
}
