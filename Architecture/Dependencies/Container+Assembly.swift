//
//  Container+Assembly.swift
//  Architecture
//
//  Created by Andrei Kindziayeu on 19.01.25.
//

import Swinject

extension Container {
    convenience init(assemblies: [Assembly]) {
        self.init()
        
        run(assemblies: assemblies)
    }
    
    private func run(assemblies: [Assembly]) {
        // build the container from each assembly
        for assembly in assemblies {
            assembly.assemble(container: self)
        }

        // inform all of the assemblies that the container is loaded
        for assembly in assemblies {
            assembly.loaded(resolver: self)
        }
    }
}
