//
//  Container+Autoresolve.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import Swinject

extension Resolver {
    func autoresolve<Service>(_ serviceType: Service.Type = Service.self) -> Service? {
        resolve(serviceType)
    }
}
