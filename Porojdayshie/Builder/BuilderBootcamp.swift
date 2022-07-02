//
//  BuilderBootcamp.swift
//  SwiftSandbox
//
//  Created by m4c5on on 9.06.22.
//

import Foundation

class BuilderBootcamp {
    
    init() {
        let director = Director()
        
        let jeep = director.createHummer()
        let porche = director.createPorche()
        
        print(jeep)
        print(porche)
    }
    
}
