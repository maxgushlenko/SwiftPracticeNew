//
//  Prototype.swift
//  SwiftSandbox
//
//  Created by m4c5on on 9.06.22.
//

import Foundation

class Human: NSCopying {
    
    var pasport: Pasport
    var height: Double
    
    init(passport: Pasport, height: Double) {
        self.pasport = passport
        self.height = height
    }
    
    /*
     MARK: - NSCopying
     */
    
    func copy(with zone: NSZone? = nil) -> Any {
        return Human(passport: self.pasport.copy() as! Pasport,
                     height: self.height)
    }
    
}
