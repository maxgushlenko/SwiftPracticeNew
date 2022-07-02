//
//  Pasport.swift
//  SwiftSandbox
//
//  Created by m4c5on on 9.06.22.
//

import Foundation

class Pasport: NSCopying {
    
    var age: Int
    var name: String
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return Pasport(name: name, age: age)
    }
    
}
