//
//  PrototypeBootcamp.swift
//  SwiftSandbox
//
//  Created by m4c5on on 9.06.22.
//

import Foundation

class PrototypeBootcamp {
    
    init() {
        
        let pasport = Pasport(name: "max", age: 30)
        let max = Human(passport: pasport, height: 194)
        
        let maxCopy = max.copy() as! Human
        let pasportCopy = pasport.copy() as! Pasport
        
        let maxCopyResult = max === maxCopy
        let pasportCopyResult = pasport !== pasportCopy
        
        print()
    }
    
}
