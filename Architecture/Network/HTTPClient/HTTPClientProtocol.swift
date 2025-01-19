//
//  HTTPClientProtocol.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import Foundation

protocol HTTPClientProtocol {
    func data(for: URLRequest) async throws -> (Data, URLResponse)
}
