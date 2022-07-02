//
//  Sinngletone.swift
//  SwiftSandbox
//
//  Created by m4c5on on 9.06.22.
//

import Foundation

class Singletone: NSCopying {
    
    static let shared = Singletone()
    
    private init() { }
    
    /*
     MARK: -
     */
    
    func copy(with zone: NSZone? = nil) -> Any {
        return self
    }
    
}
