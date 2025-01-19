//
//  View+FirstAppear.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import SwiftUI

private struct FirstAppearViewModifier: ViewModifier {
    @State private var isFirstAppear = true
    
    let action: () -> Void
    
    func body(content: Content) -> some View {
        content
            .onAppear {
                if isFirstAppear {
                    isFirstAppear = false
                    action()
                }
            }
    }
}

extension View {
    func onFirstAppear(perform action: @escaping () -> Void) -> some View {
        modifier(FirstAppearViewModifier(action: action))
    }
}
