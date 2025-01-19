//
//  ResolvingView.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import SwiftUI

struct ResolvingView<AssembledView: View, Depencencies>: View {
    @StateObject private var viewModel: ResolvingViewModel<Depencencies>
    
    private let view: (Depencencies) -> AssembledView
    
    init(
        dependencies: @escaping () throws -> Depencencies,
        view: @escaping (_ dependencies: Depencencies) -> AssembledView
    ) {
        self.view = view
        _viewModel = StateObject(wrappedValue: ResolvingViewModel(dependencies: dependencies))
    }
    
    var body: some View {
        switch viewModel.result {
        case .success(let dependencies):
            view(dependencies)
            
        case .failure(let error):
#if DEBUG
            ResolvingErrorView(error: error)
#else
            nil as AssembledView?
#endif
        }
    }
}
