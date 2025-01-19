//
//  ResolvingErrorView.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import SwiftUI

struct ResolvingErrorView: View {
    @State private var isErrorPresented: Bool = false
    
    let error: Error
    
    var body: some View {
        Button {
            isErrorPresented.toggle()
        } label: {
            Text("Error")
                .foregroundStyle(.white)
                .padding()
                .background(.red)
        }
        .sheet(isPresented: $isErrorPresented) {
            TextEditor(text: .constant("\(error)"))
        }
    }
}
